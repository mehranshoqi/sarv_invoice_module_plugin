// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetAlbumsStateTearOff {
  const _$GetAlbumsStateTearOff();

  _SendNameInital initial() {
    return const _SendNameInital();
  }

  GetAlbumsStateLoading loading() {
    return const GetAlbumsStateLoading();
  }

  _GetAlbumsStateLoaded done(BaseResponse<GetAlbumsResponse> response) {
    return _GetAlbumsStateLoaded(
      response,
    );
  }

  _SendPhoneNumberStateError error(Failure failure) {
    return _SendPhoneNumberStateError(
      failure,
    );
  }
}

/// @nodoc
const $GetAlbumsState = _$GetAlbumsStateTearOff();

/// @nodoc
mixin _$GetAlbumsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetAlbumsResponse> response) done,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetAlbumsResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetAlbumsResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendNameInital value) initial,
    required TResult Function(GetAlbumsStateLoading value) loading,
    required TResult Function(_GetAlbumsStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetAlbumsStateLoading value)? loading,
    TResult Function(_GetAlbumsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetAlbumsStateLoading value)? loading,
    TResult Function(_GetAlbumsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAlbumsStateCopyWith<$Res> {
  factory $GetAlbumsStateCopyWith(
          GetAlbumsState value, $Res Function(GetAlbumsState) then) =
      _$GetAlbumsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetAlbumsStateCopyWithImpl<$Res>
    implements $GetAlbumsStateCopyWith<$Res> {
  _$GetAlbumsStateCopyWithImpl(this._value, this._then);

  final GetAlbumsState _value;
  // ignore: unused_field
  final $Res Function(GetAlbumsState) _then;
}

/// @nodoc
abstract class _$SendNameInitalCopyWith<$Res> {
  factory _$SendNameInitalCopyWith(
          _SendNameInital value, $Res Function(_SendNameInital) then) =
      __$SendNameInitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$SendNameInitalCopyWithImpl<$Res>
    extends _$GetAlbumsStateCopyWithImpl<$Res>
    implements _$SendNameInitalCopyWith<$Res> {
  __$SendNameInitalCopyWithImpl(
      _SendNameInital _value, $Res Function(_SendNameInital) _then)
      : super(_value, (v) => _then(v as _SendNameInital));

  @override
  _SendNameInital get _value => super._value as _SendNameInital;
}

/// @nodoc

class _$_SendNameInital implements _SendNameInital {
  const _$_SendNameInital();

  @override
  String toString() {
    return 'GetAlbumsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SendNameInital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetAlbumsResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetAlbumsResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetAlbumsResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendNameInital value) initial,
    required TResult Function(GetAlbumsStateLoading value) loading,
    required TResult Function(_GetAlbumsStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetAlbumsStateLoading value)? loading,
    TResult Function(_GetAlbumsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetAlbumsStateLoading value)? loading,
    TResult Function(_GetAlbumsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SendNameInital implements GetAlbumsState {
  const factory _SendNameInital() = _$_SendNameInital;
}

/// @nodoc
abstract class $GetAlbumsStateLoadingCopyWith<$Res> {
  factory $GetAlbumsStateLoadingCopyWith(GetAlbumsStateLoading value,
          $Res Function(GetAlbumsStateLoading) then) =
      _$GetAlbumsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetAlbumsStateLoadingCopyWithImpl<$Res>
    extends _$GetAlbumsStateCopyWithImpl<$Res>
    implements $GetAlbumsStateLoadingCopyWith<$Res> {
  _$GetAlbumsStateLoadingCopyWithImpl(
      GetAlbumsStateLoading _value, $Res Function(GetAlbumsStateLoading) _then)
      : super(_value, (v) => _then(v as GetAlbumsStateLoading));

  @override
  GetAlbumsStateLoading get _value => super._value as GetAlbumsStateLoading;
}

/// @nodoc

class _$GetAlbumsStateLoading implements GetAlbumsStateLoading {
  const _$GetAlbumsStateLoading();

  @override
  String toString() {
    return 'GetAlbumsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetAlbumsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetAlbumsResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetAlbumsResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetAlbumsResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendNameInital value) initial,
    required TResult Function(GetAlbumsStateLoading value) loading,
    required TResult Function(_GetAlbumsStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetAlbumsStateLoading value)? loading,
    TResult Function(_GetAlbumsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetAlbumsStateLoading value)? loading,
    TResult Function(_GetAlbumsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetAlbumsStateLoading implements GetAlbumsState {
  const factory GetAlbumsStateLoading() = _$GetAlbumsStateLoading;
}

/// @nodoc
abstract class _$GetAlbumsStateLoadedCopyWith<$Res> {
  factory _$GetAlbumsStateLoadedCopyWith(_GetAlbumsStateLoaded value,
          $Res Function(_GetAlbumsStateLoaded) then) =
      __$GetAlbumsStateLoadedCopyWithImpl<$Res>;
  $Res call({BaseResponse<GetAlbumsResponse> response});
}

/// @nodoc
class __$GetAlbumsStateLoadedCopyWithImpl<$Res>
    extends _$GetAlbumsStateCopyWithImpl<$Res>
    implements _$GetAlbumsStateLoadedCopyWith<$Res> {
  __$GetAlbumsStateLoadedCopyWithImpl(
      _GetAlbumsStateLoaded _value, $Res Function(_GetAlbumsStateLoaded) _then)
      : super(_value, (v) => _then(v as _GetAlbumsStateLoaded));

  @override
  _GetAlbumsStateLoaded get _value => super._value as _GetAlbumsStateLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_GetAlbumsStateLoaded(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse<GetAlbumsResponse>,
    ));
  }
}

/// @nodoc

class _$_GetAlbumsStateLoaded implements _GetAlbumsStateLoaded {
  const _$_GetAlbumsStateLoaded(this.response);

  @override
  final BaseResponse<GetAlbumsResponse> response;

  @override
  String toString() {
    return 'GetAlbumsState.done(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetAlbumsStateLoaded &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$GetAlbumsStateLoadedCopyWith<_GetAlbumsStateLoaded> get copyWith =>
      __$GetAlbumsStateLoadedCopyWithImpl<_GetAlbumsStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetAlbumsResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return done(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetAlbumsResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return done?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetAlbumsResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendNameInital value) initial,
    required TResult Function(GetAlbumsStateLoading value) loading,
    required TResult Function(_GetAlbumsStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetAlbumsStateLoading value)? loading,
    TResult Function(_GetAlbumsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetAlbumsStateLoading value)? loading,
    TResult Function(_GetAlbumsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _GetAlbumsStateLoaded implements GetAlbumsState {
  const factory _GetAlbumsStateLoaded(
      BaseResponse<GetAlbumsResponse> response) = _$_GetAlbumsStateLoaded;

  BaseResponse<GetAlbumsResponse> get response;
  @JsonKey(ignore: true)
  _$GetAlbumsStateLoadedCopyWith<_GetAlbumsStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendPhoneNumberStateErrorCopyWith<$Res> {
  factory _$SendPhoneNumberStateErrorCopyWith(_SendPhoneNumberStateError value,
          $Res Function(_SendPhoneNumberStateError) then) =
      __$SendPhoneNumberStateErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$SendPhoneNumberStateErrorCopyWithImpl<$Res>
    extends _$GetAlbumsStateCopyWithImpl<$Res>
    implements _$SendPhoneNumberStateErrorCopyWith<$Res> {
  __$SendPhoneNumberStateErrorCopyWithImpl(_SendPhoneNumberStateError _value,
      $Res Function(_SendPhoneNumberStateError) _then)
      : super(_value, (v) => _then(v as _SendPhoneNumberStateError));

  @override
  _SendPhoneNumberStateError get _value =>
      super._value as _SendPhoneNumberStateError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_SendPhoneNumberStateError(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_SendPhoneNumberStateError implements _SendPhoneNumberStateError {
  const _$_SendPhoneNumberStateError(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'GetAlbumsState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendPhoneNumberStateError &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$SendPhoneNumberStateErrorCopyWith<_SendPhoneNumberStateError>
      get copyWith =>
          __$SendPhoneNumberStateErrorCopyWithImpl<_SendPhoneNumberStateError>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<GetAlbumsResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetAlbumsResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<GetAlbumsResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendNameInital value) initial,
    required TResult Function(GetAlbumsStateLoading value) loading,
    required TResult Function(_GetAlbumsStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetAlbumsStateLoading value)? loading,
    TResult Function(_GetAlbumsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(GetAlbumsStateLoading value)? loading,
    TResult Function(_GetAlbumsStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneNumberStateError implements GetAlbumsState {
  const factory _SendPhoneNumberStateError(Failure failure) =
      _$_SendPhoneNumberStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$SendPhoneNumberStateErrorCopyWith<_SendPhoneNumberStateError>
      get copyWith => throw _privateConstructorUsedError;
}
