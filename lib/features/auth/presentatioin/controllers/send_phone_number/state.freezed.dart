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
class _$SendPhoneNumberStateTearOff {
  const _$SendPhoneNumberStateTearOff();

  _SendPhoneNumberInital initial() {
    return const _SendPhoneNumberInital();
  }

  SendPhoneNumberStateLoading loading() {
    return const SendPhoneNumberStateLoading();
  }

  _SendPhoneNumberStateLoaded done(BaseResponse<SendPhoneResponse> response) {
    return _SendPhoneNumberStateLoaded(
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
const $SendPhoneNumberState = _$SendPhoneNumberStateTearOff();

/// @nodoc
mixin _$SendPhoneNumberState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<SendPhoneResponse> response) done,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<SendPhoneResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<SendPhoneResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendPhoneNumberInital value) initial,
    required TResult Function(SendPhoneNumberStateLoading value) loading,
    required TResult Function(_SendPhoneNumberStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendPhoneNumberInital value)? initial,
    TResult Function(SendPhoneNumberStateLoading value)? loading,
    TResult Function(_SendPhoneNumberStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendPhoneNumberInital value)? initial,
    TResult Function(SendPhoneNumberStateLoading value)? loading,
    TResult Function(_SendPhoneNumberStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendPhoneNumberStateCopyWith<$Res> {
  factory $SendPhoneNumberStateCopyWith(SendPhoneNumberState value,
          $Res Function(SendPhoneNumberState) then) =
      _$SendPhoneNumberStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendPhoneNumberStateCopyWithImpl<$Res>
    implements $SendPhoneNumberStateCopyWith<$Res> {
  _$SendPhoneNumberStateCopyWithImpl(this._value, this._then);

  final SendPhoneNumberState _value;
  // ignore: unused_field
  final $Res Function(SendPhoneNumberState) _then;
}

/// @nodoc
abstract class _$SendPhoneNumberInitalCopyWith<$Res> {
  factory _$SendPhoneNumberInitalCopyWith(_SendPhoneNumberInital value,
          $Res Function(_SendPhoneNumberInital) then) =
      __$SendPhoneNumberInitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$SendPhoneNumberInitalCopyWithImpl<$Res>
    extends _$SendPhoneNumberStateCopyWithImpl<$Res>
    implements _$SendPhoneNumberInitalCopyWith<$Res> {
  __$SendPhoneNumberInitalCopyWithImpl(_SendPhoneNumberInital _value,
      $Res Function(_SendPhoneNumberInital) _then)
      : super(_value, (v) => _then(v as _SendPhoneNumberInital));

  @override
  _SendPhoneNumberInital get _value => super._value as _SendPhoneNumberInital;
}

/// @nodoc

class _$_SendPhoneNumberInital implements _SendPhoneNumberInital {
  const _$_SendPhoneNumberInital();

  @override
  String toString() {
    return 'SendPhoneNumberState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SendPhoneNumberInital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<SendPhoneResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<SendPhoneResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<SendPhoneResponse> response)? done,
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
    required TResult Function(_SendPhoneNumberInital value) initial,
    required TResult Function(SendPhoneNumberStateLoading value) loading,
    required TResult Function(_SendPhoneNumberStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendPhoneNumberInital value)? initial,
    TResult Function(SendPhoneNumberStateLoading value)? loading,
    TResult Function(_SendPhoneNumberStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendPhoneNumberInital value)? initial,
    TResult Function(SendPhoneNumberStateLoading value)? loading,
    TResult Function(_SendPhoneNumberStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneNumberInital implements SendPhoneNumberState {
  const factory _SendPhoneNumberInital() = _$_SendPhoneNumberInital;
}

/// @nodoc
abstract class $SendPhoneNumberStateLoadingCopyWith<$Res> {
  factory $SendPhoneNumberStateLoadingCopyWith(
          SendPhoneNumberStateLoading value,
          $Res Function(SendPhoneNumberStateLoading) then) =
      _$SendPhoneNumberStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendPhoneNumberStateLoadingCopyWithImpl<$Res>
    extends _$SendPhoneNumberStateCopyWithImpl<$Res>
    implements $SendPhoneNumberStateLoadingCopyWith<$Res> {
  _$SendPhoneNumberStateLoadingCopyWithImpl(SendPhoneNumberStateLoading _value,
      $Res Function(SendPhoneNumberStateLoading) _then)
      : super(_value, (v) => _then(v as SendPhoneNumberStateLoading));

  @override
  SendPhoneNumberStateLoading get _value =>
      super._value as SendPhoneNumberStateLoading;
}

/// @nodoc

class _$SendPhoneNumberStateLoading implements SendPhoneNumberStateLoading {
  const _$SendPhoneNumberStateLoading();

  @override
  String toString() {
    return 'SendPhoneNumberState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendPhoneNumberStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<SendPhoneResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<SendPhoneResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<SendPhoneResponse> response)? done,
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
    required TResult Function(_SendPhoneNumberInital value) initial,
    required TResult Function(SendPhoneNumberStateLoading value) loading,
    required TResult Function(_SendPhoneNumberStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendPhoneNumberInital value)? initial,
    TResult Function(SendPhoneNumberStateLoading value)? loading,
    TResult Function(_SendPhoneNumberStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendPhoneNumberInital value)? initial,
    TResult Function(SendPhoneNumberStateLoading value)? loading,
    TResult Function(_SendPhoneNumberStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SendPhoneNumberStateLoading implements SendPhoneNumberState {
  const factory SendPhoneNumberStateLoading() = _$SendPhoneNumberStateLoading;
}

/// @nodoc
abstract class _$SendPhoneNumberStateLoadedCopyWith<$Res> {
  factory _$SendPhoneNumberStateLoadedCopyWith(
          _SendPhoneNumberStateLoaded value,
          $Res Function(_SendPhoneNumberStateLoaded) then) =
      __$SendPhoneNumberStateLoadedCopyWithImpl<$Res>;
  $Res call({BaseResponse<SendPhoneResponse> response});
}

/// @nodoc
class __$SendPhoneNumberStateLoadedCopyWithImpl<$Res>
    extends _$SendPhoneNumberStateCopyWithImpl<$Res>
    implements _$SendPhoneNumberStateLoadedCopyWith<$Res> {
  __$SendPhoneNumberStateLoadedCopyWithImpl(_SendPhoneNumberStateLoaded _value,
      $Res Function(_SendPhoneNumberStateLoaded) _then)
      : super(_value, (v) => _then(v as _SendPhoneNumberStateLoaded));

  @override
  _SendPhoneNumberStateLoaded get _value =>
      super._value as _SendPhoneNumberStateLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_SendPhoneNumberStateLoaded(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse<SendPhoneResponse>,
    ));
  }
}

/// @nodoc

class _$_SendPhoneNumberStateLoaded implements _SendPhoneNumberStateLoaded {
  const _$_SendPhoneNumberStateLoaded(this.response);

  @override
  final BaseResponse<SendPhoneResponse> response;

  @override
  String toString() {
    return 'SendPhoneNumberState.done(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendPhoneNumberStateLoaded &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$SendPhoneNumberStateLoadedCopyWith<_SendPhoneNumberStateLoaded>
      get copyWith => __$SendPhoneNumberStateLoadedCopyWithImpl<
          _SendPhoneNumberStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<SendPhoneResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return done(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<SendPhoneResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return done?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<SendPhoneResponse> response)? done,
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
    required TResult Function(_SendPhoneNumberInital value) initial,
    required TResult Function(SendPhoneNumberStateLoading value) loading,
    required TResult Function(_SendPhoneNumberStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendPhoneNumberInital value)? initial,
    TResult Function(SendPhoneNumberStateLoading value)? loading,
    TResult Function(_SendPhoneNumberStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendPhoneNumberInital value)? initial,
    TResult Function(SendPhoneNumberStateLoading value)? loading,
    TResult Function(_SendPhoneNumberStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneNumberStateLoaded implements SendPhoneNumberState {
  const factory _SendPhoneNumberStateLoaded(
      BaseResponse<SendPhoneResponse> response) = _$_SendPhoneNumberStateLoaded;

  BaseResponse<SendPhoneResponse> get response;
  @JsonKey(ignore: true)
  _$SendPhoneNumberStateLoadedCopyWith<_SendPhoneNumberStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$SendPhoneNumberStateCopyWithImpl<$Res>
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
    return 'SendPhoneNumberState.error(failure: $failure)';
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
    required TResult Function(BaseResponse<SendPhoneResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<SendPhoneResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<SendPhoneResponse> response)? done,
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
    required TResult Function(_SendPhoneNumberInital value) initial,
    required TResult Function(SendPhoneNumberStateLoading value) loading,
    required TResult Function(_SendPhoneNumberStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendPhoneNumberInital value)? initial,
    TResult Function(SendPhoneNumberStateLoading value)? loading,
    TResult Function(_SendPhoneNumberStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendPhoneNumberInital value)? initial,
    TResult Function(SendPhoneNumberStateLoading value)? loading,
    TResult Function(_SendPhoneNumberStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneNumberStateError implements SendPhoneNumberState {
  const factory _SendPhoneNumberStateError(Failure failure) =
      _$_SendPhoneNumberStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$SendPhoneNumberStateErrorCopyWith<_SendPhoneNumberStateError>
      get copyWith => throw _privateConstructorUsedError;
}
