// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Feed _$FeedFromJson(Map<String, dynamic> json) {
  return _Feed.fromJson(json);
}

/// @nodoc
mixin _$Feed {
  int get id => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  String get updated_at => throw _privateConstructorUsedError;
  String? get media_url => throw _privateConstructorUsedError;
  String get media_type => throw _privateConstructorUsedError;
  int get like_count => throw _privateConstructorUsedError;
  int get comment_count => throw _privateConstructorUsedError;
  bool get is_liked => throw _privateConstructorUsedError;
  FeedOwner get owner => throw _privateConstructorUsedError;

  /// Serializes this Feed to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedCopyWith<Feed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedCopyWith<$Res> {
  factory $FeedCopyWith(Feed value, $Res Function(Feed) then) =
      _$FeedCopyWithImpl<$Res, Feed>;
  @useResult
  $Res call(
      {int id,
      String body,
      String created_at,
      String updated_at,
      String? media_url,
      String media_type,
      int like_count,
      int comment_count,
      bool is_liked,
      FeedOwner owner});

  $FeedOwnerCopyWith<$Res> get owner;
}

/// @nodoc
class _$FeedCopyWithImpl<$Res, $Val extends Feed>
    implements $FeedCopyWith<$Res> {
  _$FeedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? media_url = freezed,
    Object? media_type = null,
    Object? like_count = null,
    Object? comment_count = null,
    Object? is_liked = null,
    Object? owner = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      media_url: freezed == media_url
          ? _value.media_url
          : media_url // ignore: cast_nullable_to_non_nullable
              as String?,
      media_type: null == media_type
          ? _value.media_type
          : media_type // ignore: cast_nullable_to_non_nullable
              as String,
      like_count: null == like_count
          ? _value.like_count
          : like_count // ignore: cast_nullable_to_non_nullable
              as int,
      comment_count: null == comment_count
          ? _value.comment_count
          : comment_count // ignore: cast_nullable_to_non_nullable
              as int,
      is_liked: null == is_liked
          ? _value.is_liked
          : is_liked // ignore: cast_nullable_to_non_nullable
              as bool,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as FeedOwner,
    ) as $Val);
  }

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedOwnerCopyWith<$Res> get owner {
    return $FeedOwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedImplCopyWith<$Res> implements $FeedCopyWith<$Res> {
  factory _$$FeedImplCopyWith(
          _$FeedImpl value, $Res Function(_$FeedImpl) then) =
      __$$FeedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String body,
      String created_at,
      String updated_at,
      String? media_url,
      String media_type,
      int like_count,
      int comment_count,
      bool is_liked,
      FeedOwner owner});

  @override
  $FeedOwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$$FeedImplCopyWithImpl<$Res>
    extends _$FeedCopyWithImpl<$Res, _$FeedImpl>
    implements _$$FeedImplCopyWith<$Res> {
  __$$FeedImplCopyWithImpl(_$FeedImpl _value, $Res Function(_$FeedImpl) _then)
      : super(_value, _then);

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? body = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? media_url = freezed,
    Object? media_type = null,
    Object? like_count = null,
    Object? comment_count = null,
    Object? is_liked = null,
    Object? owner = null,
  }) {
    return _then(_$FeedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      media_url: freezed == media_url
          ? _value.media_url
          : media_url // ignore: cast_nullable_to_non_nullable
              as String?,
      media_type: null == media_type
          ? _value.media_type
          : media_type // ignore: cast_nullable_to_non_nullable
              as String,
      like_count: null == like_count
          ? _value.like_count
          : like_count // ignore: cast_nullable_to_non_nullable
              as int,
      comment_count: null == comment_count
          ? _value.comment_count
          : comment_count // ignore: cast_nullable_to_non_nullable
              as int,
      is_liked: null == is_liked
          ? _value.is_liked
          : is_liked // ignore: cast_nullable_to_non_nullable
              as bool,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as FeedOwner,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedImpl extends _Feed {
  const _$FeedImpl(
      {required this.id,
      required this.body,
      required this.created_at,
      required this.updated_at,
      this.media_url,
      required this.media_type,
      required this.like_count,
      required this.comment_count,
      required this.is_liked,
      required this.owner})
      : super._();

  factory _$FeedImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedImplFromJson(json);

  @override
  final int id;
  @override
  final String body;
  @override
  final String created_at;
  @override
  final String updated_at;
  @override
  final String? media_url;
  @override
  final String media_type;
  @override
  final int like_count;
  @override
  final int comment_count;
  @override
  final bool is_liked;
  @override
  final FeedOwner owner;

  @override
  String toString() {
    return 'Feed(id: $id, body: $body, created_at: $created_at, updated_at: $updated_at, media_url: $media_url, media_type: $media_type, like_count: $like_count, comment_count: $comment_count, is_liked: $is_liked, owner: $owner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.media_url, media_url) ||
                other.media_url == media_url) &&
            (identical(other.media_type, media_type) ||
                other.media_type == media_type) &&
            (identical(other.like_count, like_count) ||
                other.like_count == like_count) &&
            (identical(other.comment_count, comment_count) ||
                other.comment_count == comment_count) &&
            (identical(other.is_liked, is_liked) ||
                other.is_liked == is_liked) &&
            (identical(other.owner, owner) || other.owner == owner));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, body, created_at, updated_at,
      media_url, media_type, like_count, comment_count, is_liked, owner);

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedImplCopyWith<_$FeedImpl> get copyWith =>
      __$$FeedImplCopyWithImpl<_$FeedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedImplToJson(
      this,
    );
  }
}

abstract class _Feed extends Feed {
  const factory _Feed(
      {required final int id,
      required final String body,
      required final String created_at,
      required final String updated_at,
      final String? media_url,
      required final String media_type,
      required final int like_count,
      required final int comment_count,
      required final bool is_liked,
      required final FeedOwner owner}) = _$FeedImpl;
  const _Feed._() : super._();

  factory _Feed.fromJson(Map<String, dynamic> json) = _$FeedImpl.fromJson;

  @override
  int get id;
  @override
  String get body;
  @override
  String get created_at;
  @override
  String get updated_at;
  @override
  String? get media_url;
  @override
  String get media_type;
  @override
  int get like_count;
  @override
  int get comment_count;
  @override
  bool get is_liked;
  @override
  FeedOwner get owner;

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedImplCopyWith<_$FeedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
