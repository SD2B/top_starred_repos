// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Repo _$RepoFromJson(Map<String, dynamic> json) {
  return _Repo.fromJson(json);
}

/// @nodoc
mixin _$Repo {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int get stars => throw _privateConstructorUsedError;
  @JsonKey(name: 'login')
  String? get ownerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String? get ownerAvatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepoCopyWith<Repo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoCopyWith<$Res> {
  factory $RepoCopyWith(Repo value, $Res Function(Repo) then) =
      _$RepoCopyWithImpl<$Res, Repo>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      @JsonKey(name: 'stargazers_count') int stars,
      @JsonKey(name: 'login') String? ownerName,
      @JsonKey(name: 'avatar_url') String? ownerAvatarUrl,
      @JsonKey(name: 'html_url') String? url,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$RepoCopyWithImpl<$Res, $Val extends Repo>
    implements $RepoCopyWith<$Res> {
  _$RepoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? stars = null,
    Object? ownerName = freezed,
    Object? ownerAvatarUrl = freezed,
    Object? url = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as int,
      ownerName: freezed == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerAvatarUrl: freezed == ownerAvatarUrl
          ? _value.ownerAvatarUrl
          : ownerAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepoImplCopyWith<$Res> implements $RepoCopyWith<$Res> {
  factory _$$RepoImplCopyWith(
          _$RepoImpl value, $Res Function(_$RepoImpl) then) =
      __$$RepoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      @JsonKey(name: 'stargazers_count') int stars,
      @JsonKey(name: 'login') String? ownerName,
      @JsonKey(name: 'avatar_url') String? ownerAvatarUrl,
      @JsonKey(name: 'html_url') String? url,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$$RepoImplCopyWithImpl<$Res>
    extends _$RepoCopyWithImpl<$Res, _$RepoImpl>
    implements _$$RepoImplCopyWith<$Res> {
  __$$RepoImplCopyWithImpl(_$RepoImpl _value, $Res Function(_$RepoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? stars = null,
    Object? ownerName = freezed,
    Object? ownerAvatarUrl = freezed,
    Object? url = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$RepoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as int,
      ownerName: freezed == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerAvatarUrl: freezed == ownerAvatarUrl
          ? _value.ownerAvatarUrl
          : ownerAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepoImpl implements _Repo {
  const _$RepoImpl(
      {this.id,
      this.name,
      this.description,
      @JsonKey(name: 'stargazers_count') this.stars = 0,
      @JsonKey(name: 'login') this.ownerName,
      @JsonKey(name: 'avatar_url') this.ownerAvatarUrl,
      @JsonKey(name: 'html_url') this.url,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$RepoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  @JsonKey(name: 'stargazers_count')
  final int stars;
  @override
  @JsonKey(name: 'login')
  final String? ownerName;
  @override
  @JsonKey(name: 'avatar_url')
  final String? ownerAvatarUrl;
  @override
  @JsonKey(name: 'html_url')
  final String? url;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Repo(id: $id, name: $name, description: $description, stars: $stars, ownerName: $ownerName, ownerAvatarUrl: $ownerAvatarUrl, url: $url, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.stars, stars) || other.stars == stars) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.ownerAvatarUrl, ownerAvatarUrl) ||
                other.ownerAvatarUrl == ownerAvatarUrl) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, stars,
      ownerName, ownerAvatarUrl, url, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepoImplCopyWith<_$RepoImpl> get copyWith =>
      __$$RepoImplCopyWithImpl<_$RepoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepoImplToJson(
      this,
    );
  }
}

abstract class _Repo implements Repo {
  const factory _Repo(
      {final int? id,
      final String? name,
      final String? description,
      @JsonKey(name: 'stargazers_count') final int stars,
      @JsonKey(name: 'login') final String? ownerName,
      @JsonKey(name: 'avatar_url') final String? ownerAvatarUrl,
      @JsonKey(name: 'html_url') final String? url,
      @JsonKey(name: 'created_at') final DateTime? createdAt}) = _$RepoImpl;

  factory _Repo.fromJson(Map<String, dynamic> json) = _$RepoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  @JsonKey(name: 'stargazers_count')
  int get stars;
  @override
  @JsonKey(name: 'login')
  String? get ownerName;
  @override
  @JsonKey(name: 'avatar_url')
  String? get ownerAvatarUrl;
  @override
  @JsonKey(name: 'html_url')
  String? get url;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$RepoImplCopyWith<_$RepoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
