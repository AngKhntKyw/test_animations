// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReplyList _$ReplyListFromJson(Map<String, dynamic> json) {
  return _ReplyList.fromJson(json);
}

/// @nodoc
mixin _$ReplyList {
  List<Reply> get data => throw _privateConstructorUsedError;
  String? get cursor => throw _privateConstructorUsedError;
  bool get has_next_page => throw _privateConstructorUsedError;

  /// Serializes this ReplyList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReplyList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReplyListCopyWith<ReplyList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyListCopyWith<$Res> {
  factory $ReplyListCopyWith(ReplyList value, $Res Function(ReplyList) then) =
      _$ReplyListCopyWithImpl<$Res, ReplyList>;
  @useResult
  $Res call({List<Reply> data, String? cursor, bool has_next_page});
}

/// @nodoc
class _$ReplyListCopyWithImpl<$Res, $Val extends ReplyList>
    implements $ReplyListCopyWith<$Res> {
  _$ReplyListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReplyList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? cursor = freezed,
    Object? has_next_page = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Reply>,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
      has_next_page: null == has_next_page
          ? _value.has_next_page
          : has_next_page // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReplyListImplCopyWith<$Res>
    implements $ReplyListCopyWith<$Res> {
  factory _$$ReplyListImplCopyWith(
          _$ReplyListImpl value, $Res Function(_$ReplyListImpl) then) =
      __$$ReplyListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Reply> data, String? cursor, bool has_next_page});
}

/// @nodoc
class __$$ReplyListImplCopyWithImpl<$Res>
    extends _$ReplyListCopyWithImpl<$Res, _$ReplyListImpl>
    implements _$$ReplyListImplCopyWith<$Res> {
  __$$ReplyListImplCopyWithImpl(
      _$ReplyListImpl _value, $Res Function(_$ReplyListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReplyList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? cursor = freezed,
    Object? has_next_page = null,
  }) {
    return _then(_$ReplyListImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Reply>,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
      has_next_page: null == has_next_page
          ? _value.has_next_page
          : has_next_page // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplyListImpl extends _ReplyList {
  const _$ReplyListImpl(
      {required final List<Reply> data,
      this.cursor,
      required this.has_next_page})
      : _data = data,
        super._();

  factory _$ReplyListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyListImplFromJson(json);

  final List<Reply> _data;
  @override
  List<Reply> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String? cursor;
  @override
  final bool has_next_page;

  @override
  String toString() {
    return 'ReplyList(data: $data, cursor: $cursor, has_next_page: $has_next_page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyListImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.cursor, cursor) || other.cursor == cursor) &&
            (identical(other.has_next_page, has_next_page) ||
                other.has_next_page == has_next_page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), cursor, has_next_page);

  /// Create a copy of ReplyList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyListImplCopyWith<_$ReplyListImpl> get copyWith =>
      __$$ReplyListImplCopyWithImpl<_$ReplyListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyListImplToJson(
      this,
    );
  }
}

abstract class _ReplyList extends ReplyList {
  const factory _ReplyList(
      {required final List<Reply> data,
      final String? cursor,
      required final bool has_next_page}) = _$ReplyListImpl;
  const _ReplyList._() : super._();

  factory _ReplyList.fromJson(Map<String, dynamic> json) =
      _$ReplyListImpl.fromJson;

  @override
  List<Reply> get data;
  @override
  String? get cursor;
  @override
  bool get has_next_page;

  /// Create a copy of ReplyList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReplyListImplCopyWith<_$ReplyListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
