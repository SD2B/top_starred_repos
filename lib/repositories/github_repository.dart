import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../models/repo_model.dart';

class GitHubRepository {
  final Dio dio = Dio();

  Future<List<Repo>> fetchTopStarredRepos(DateTimeRange dateRange) async {
    String startDate = dateRange.start.toIso8601String().split('T')[0];
    // String endDate = dateRange.end.toIso8601String().split('T')[0];
    final response = await dio.get(
      'https://api.github.com/search/repositories?q=created',
      queryParameters: {
        'q': 'created:>$startDate',
        'sort': 'stars',
        'order': 'desc',
        'per_page': 999999,
      },
    );

    final List items = response.data['items'];

    List<Repo> data = items
        .map((repoData) => Repo(
            id: repoData["id"],
            name: repoData["name"],
            description: repoData["description"],
            createdAt: DateTime.parse(repoData["created_at"]),
            ownerName: repoData["owner"]["login"],
            ownerAvatarUrl: repoData["owner"]["avatar_url"],
            url: repoData["html_url"],
            stars: repoData["stargazers_count"]))
        .toList();
    return data;
  }
}
