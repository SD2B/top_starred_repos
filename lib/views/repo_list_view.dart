// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:repo_list/helpers/helpers.dart';
import 'package:url_launcher/url_launcher.dart';
import '../viewmodels/repo_viewmodel.dart';

class RepoListView extends HookConsumerWidget {
  const RepoListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repoState = ref.watch(repoProvider);
    final expandedList = useState([]);
    final dateRange = useState(DateTimeRange(start: DateTime.now().subtract(Duration(days: 30)), end: DateTime.now()));
    void updateExpandedList(int id) {
      if (expandedList.value.contains(id)) {
        expandedList.value = expandedList.value.where((element) => element != id).toList();
      } else {
        expandedList.value = [...expandedList.value, id];
      }
    }

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.calendar_today),
            onPressed: () async {
              DateTimeRange? pickedRange = await showDateRangePicker(
                context: context,
                initialDateRange: dateRange.value,
                firstDate: DateTime.now().subtract(Duration(days: 365)),
                lastDate: dateRange.value.end,
              );

              if (pickedRange != null) {
                dateRange.value = pickedRange;
                ref.read(repoProvider.notifier).fetchRepos(pickedRange);
              }
            },
          ),
        ],
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Top Starred Repos',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white),
            ),
            10.width,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white.withOpacity(.6),
              ),
              padding: EdgeInsets.symmetric(horizontal: 9, vertical: 4),
              child: Center(
                child: Text(
                  repoState.value?.length.toString() ?? "",
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
      body: repoState.when(
        data: (repos) {
          return RefreshIndicator(
            onRefresh: () async {
              await ref.read(repoProvider.notifier).fetchRepos(dateRange.value);
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                10.height,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    height: context.height() - 100,
                    width: context.width(),
                    child: ListView.builder(
                      itemCount: repos.length,
                      itemBuilder: (context, index) {
                        final repo = repos[index];
                        return Card(
                          elevation: 3,
                          color: Colors.black,
                          child: ExpansionTile(
                            onExpansionChanged: (value) => updateExpandedList(repo.id ?? 0),
                            shape: const Border(),
                            childrenPadding: const EdgeInsets.fromLTRB(20, 10, 10, 20),
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(repo.ownerAvatarUrl ?? "https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o="),
                            ),
                            title: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: context.width() - 230,
                                  child: Text(
                                    repo.name ?? "",
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                ),
                                IconButton(
                                    onPressed: () async {
                                      final url = Uri.parse(repo.url ?? "");
                                      if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
                                        throw Exception('Could not launch $url');
                                      }
                                    },
                                    icon: Icon(
                                      Icons.link,
                                      size: 20,
                                      color: Colors.grey[500],
                                    ))
                              ],
                            ),
                            subtitle: Text(
                              expandedList.value.contains(repo.id) ? "" : repo.description ?? "",
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(Icons.star, size: 15, color: Colors.yellow),
                                Text(
                                  repo.stars.formatWithSuffix().toString(),
                                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white),
                                ),
                              ],
                            ),
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    repo.description ?? "",
                                    overflow: TextOverflow.clip,
                                    style: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white),
                                  ),
                                  if (repo.createdAt != null) ...[
                                    20.height,
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.grey[900],
                                          ),
                                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                          child: Text(
                                            DateFormat('yyyy-MM-dd , EEEE').format(repo.createdAt ?? DateTime.now()),
                                            style: const TextStyle(fontSize: 10, color: Colors.white),
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.grey[900],
                                          ),
                                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                          child: Text(
                                            DateFormat('hh:mm a').format(repo.createdAt ?? DateTime.now()),
                                            style: const TextStyle(fontSize: 10, color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    )
                                  ]
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
