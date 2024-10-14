// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../models/repo_model.dart';
import '../repositories/github_repository.dart';

final githubRepositoryProvider = Provider<GitHubRepository>((ref) {
  return GitHubRepository();
});

final repoProvider =
    StateNotifierProvider<RepoViewModel, AsyncValue<List<Repo>>>((ref) {
  return RepoViewModel(ref.read(githubRepositoryProvider));
});

class RepoViewModel extends StateNotifier<AsyncValue<List<Repo>>> {
  final GitHubRepository _repository;

  RepoViewModel(this._repository) : super(const AsyncValue.loading()) {
    fetchRepos(DateTimeRange(
      start: DateTime.now().subtract(Duration(days: 60)),
      end: DateTime.now(),
    ));
  }

  Future<void> fetchRepos(DateTimeRange dateRange) async {
    try {
      final repos = await _repository.fetchTopStarredRepos(dateRange);
      state = AsyncValue.data(repos);
    } catch (e, stackTrace) {
      debugPrint("$stackTrace");
      state = AsyncValue.error(e, stackTrace);
    }
  }
}
