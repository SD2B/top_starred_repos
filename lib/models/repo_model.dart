import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo_model.freezed.dart';
part 'repo_model.g.dart';

@freezed
class Repo with _$Repo {
  const factory Repo({
    int? id,
    String? name,
    String? description,
    @JsonKey(name: 'stargazers_count') @Default(0) int stars,
    @JsonKey(name: 'login') String? ownerName,
    @JsonKey(name: 'avatar_url') String? ownerAvatarUrl,
    @JsonKey(name: 'html_url') String? url,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _Repo;

  factory Repo.fromJson(Map<String, dynamic> json) => _$RepoFromJson(json);
}
