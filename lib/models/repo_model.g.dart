// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepoImpl _$$RepoImplFromJson(Map<String, dynamic> json) => _$RepoImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      stars: (json['stargazers_count'] as num?)?.toInt() ?? 0,
      ownerName: json['login'] as String?,
      ownerAvatarUrl: json['avatar_url'] as String?,
      url: json['html_url'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$RepoImplToJson(_$RepoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'stargazers_count': instance.stars,
      'login': instance.ownerName,
      'avatar_url': instance.ownerAvatarUrl,
      'html_url': instance.url,
      'created_at': instance.createdAt?.toIso8601String(),
    };
