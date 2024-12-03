// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_owner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReplyOwner _$ReplyOwnerFromJson(Map<String, dynamic> json) {
  return _ReplyOwner.fromJson(json);
}

/// @nodoc
mixin _$ReplyOwner {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get profile_url => throw _privateConstructorUsedError;

  /// Serializes this ReplyOwner to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReplyOwner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReplyOwnerCopyWith<ReplyOwner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyOwnerCopyWith<$Res> {
  factory $ReplyOwnerCopyWith(
          ReplyOwner value, $Res Function(ReplyOwner) then) =
      _$ReplyOwnerCopyWithImpl<$Res, ReplyOwner>;
  @useResult
  $Res call({int id, String username, String? profile_url});
}

/// @nodoc
class _$ReplyOwnerCopyWithImpl<$Res, $Val extends ReplyOwner>
    implements $ReplyOwnerCopyWith<$Res> {
  _$ReplyOwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReplyOwner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? profile_url = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profile_url: freezed == profile_url
          ? _value.profile_url
          : profile_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReplyOwnerImplCopyWith<$Res>
    implements $ReplyOwnerCopyWith<$Res> {
  factory _$$ReplyOwnerImplCopyWith(
          _$ReplyOwnerImpl value, $Res Function(_$ReplyOwnerImpl) then) =
      __$$ReplyOwnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String username, String? profile_url});
}

/// @nodoc
class __$$ReplyOwnerImplCopyWithImpl<$Res>
    extends _$ReplyOwnerCopyWithImpl<$Res, _$ReplyOwnerImpl>
    implements _$$ReplyOwnerImplCopyWith<$Res> {
  __$$ReplyOwnerImplCopyWithImpl(
      _$ReplyOwnerImpl _value, $Res Function(_$ReplyOwnerImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReplyOwner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? profile_url = freezed,
  }) {
    return _then(_$ReplyOwnerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      profile_url: freezed == profile_url
          ? _value.profile_url
          : profile_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplyOwnerImpl extends _ReplyOwner {
  const _$ReplyOwnerImpl(
      {required this.id, required this.username, this.profile_url})
      : super._();

  factory _$ReplyOwnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyOwnerImplFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String? profile_url;

  @override
  String toString() {
    return 'ReplyOwner(id: $id, username: $username, profile_url: $profile_url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyOwnerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.profile_url, profile_url) ||
                other.profile_url == profile_url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, profile_url);

  /// Create a copy of ReplyOwner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyOwnerImplCopyWith<_$ReplyOwnerImpl> get copyWith =>
      __$$ReplyOwnerImplCopyWithImpl<_$ReplyOwnerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyOwnerImplToJson(
      this,
    );
  }
}

abstract class _ReplyOwner extends ReplyOwner {
  const factory _ReplyOwner(
      {required final int id,
      required final String username,
      final String? profile_url}) = _$ReplyOwnerImpl;
  const _ReplyOwner._() : super._();

  factory _ReplyOwner.fromJson(Map<String, dynamic> json) =
      _$ReplyOwnerImpl.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  String? get profile_url;

  /// Create a copy of ReplyOwner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReplyOwnerImplCopyWith<_$ReplyOwnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
