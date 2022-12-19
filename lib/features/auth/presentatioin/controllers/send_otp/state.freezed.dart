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
class _$SendOtpStateTearOff {
  const _$SendOtpStateTearOff();

  _SendOtpInital initial() {
    return const _SendOtpInital();
  }

  SendOtpStateLoading loading() {
    return const SendOtpStateLoading();
  }

  _SendOtpStateLoaded done(BaseResponse<SendOtpResponse> response) {
    return _SendOtpStateLoaded(
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
const $SendOtpState = _$SendOtpStateTearOff();

/// @nodoc
mixin _$SendOtpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<SendOtpResponse> response) done,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<SendOtpResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<SendOtpResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtpInital value) initial,
    required TResult Function(SendOtpStateLoading value) loading,
    required TResult Function(_SendOtpStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendOtpInital value)? initial,
    TResult Function(SendOtpStateLoading value)? loading,
    TResult Function(_SendOtpStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtpInital value)? initial,
    TResult Function(SendOtpStateLoading value)? loading,
    TResult Function(_SendOtpStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendOtpStateCopyWith<$Res> {
  factory $SendOtpStateCopyWith(
          SendOtpState value, $Res Function(SendOtpState) then) =
      _$SendOtpStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendOtpStateCopyWithImpl<$Res> implements $SendOtpStateCopyWith<$Res> {
  _$SendOtpStateCopyWithImpl(this._value, this._then);

  final SendOtpState _value;
  // ignore: unused_field
  final $Res Function(SendOtpState) _then;
}

/// @nodoc
abstract class _$SendOtpInitalCopyWith<$Res> {
  factory _$SendOtpInitalCopyWith(
          _SendOtpInital value, $Res Function(_SendOtpInital) then) =
      __$SendOtpInitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$SendOtpInitalCopyWithImpl<$Res>
    extends _$SendOtpStateCopyWithImpl<$Res>
    implements _$SendOtpInitalCopyWith<$Res> {
  __$SendOtpInitalCopyWithImpl(
      _SendOtpInital _value, $Res Function(_SendOtpInital) _then)
      : super(_value, (v) => _then(v as _SendOtpInital));

  @override
  _SendOtpInital get _value => super._value as _SendOtpInital;
}

/// @nodoc

class _$_SendOtpInital implements _SendOtpInital {
  const _$_SendOtpInital();

  @override
  String toString() {
    return 'SendOtpState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SendOtpInital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<SendOtpResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<SendOtpResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<SendOtpResponse> response)? done,
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
    required TResult Function(_SendOtpInital value) initial,
    required TResult Function(SendOtpStateLoading value) loading,
    required TResult Function(_SendOtpStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendOtpInital value)? initial,
    TResult Function(SendOtpStateLoading value)? loading,
    TResult Function(_SendOtpStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtpInital value)? initial,
    TResult Function(SendOtpStateLoading value)? loading,
    TResult Function(_SendOtpStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SendOtpInital implements SendOtpState {
  const factory _SendOtpInital() = _$_SendOtpInital;
}

/// @nodoc
abstract class $SendOtpStateLoadingCopyWith<$Res> {
  factory $SendOtpStateLoadingCopyWith(
          SendOtpStateLoading value, $Res Function(SendOtpStateLoading) then) =
      _$SendOtpStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendOtpStateLoadingCopyWithImpl<$Res>
    extends _$SendOtpStateCopyWithImpl<$Res>
    implements $SendOtpStateLoadingCopyWith<$Res> {
  _$SendOtpStateLoadingCopyWithImpl(
      SendOtpStateLoading _value, $Res Function(SendOtpStateLoading) _then)
      : super(_value, (v) => _then(v as SendOtpStateLoading));

  @override
  SendOtpStateLoading get _value => super._value as SendOtpStateLoading;
}

/// @nodoc

class _$SendOtpStateLoading implements SendOtpStateLoading {
  const _$SendOtpStateLoading();

  @override
  String toString() {
    return 'SendOtpState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SendOtpStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<SendOtpResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<SendOtpResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<SendOtpResponse> response)? done,
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
    required TResult Function(_SendOtpInital value) initial,
    required TResult Function(SendOtpStateLoading value) loading,
    required TResult Function(_SendOtpStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendOtpInital value)? initial,
    TResult Function(SendOtpStateLoading value)? loading,
    TResult Function(_SendOtpStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtpInital value)? initial,
    TResult Function(SendOtpStateLoading value)? loading,
    TResult Function(_SendOtpStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SendOtpStateLoading implements SendOtpState {
  const factory SendOtpStateLoading() = _$SendOtpStateLoading;
}

/// @nodoc
abstract class _$SendOtpStateLoadedCopyWith<$Res> {
  factory _$SendOtpStateLoadedCopyWith(
          _SendOtpStateLoaded value, $Res Function(_SendOtpStateLoaded) then) =
      __$SendOtpStateLoadedCopyWithImpl<$Res>;
  $Res call({BaseResponse<SendOtpResponse> response});
}

/// @nodoc
class __$SendOtpStateLoadedCopyWithImpl<$Res>
    extends _$SendOtpStateCopyWithImpl<$Res>
    implements _$SendOtpStateLoadedCopyWith<$Res> {
  __$SendOtpStateLoadedCopyWithImpl(
      _SendOtpStateLoaded _value, $Res Function(_SendOtpStateLoaded) _then)
      : super(_value, (v) => _then(v as _SendOtpStateLoaded));

  @override
  _SendOtpStateLoaded get _value => super._value as _SendOtpStateLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_SendOtpStateLoaded(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse<SendOtpResponse>,
    ));
  }
}

/// @nodoc

class _$_SendOtpStateLoaded implements _SendOtpStateLoaded {
  const _$_SendOtpStateLoaded(this.response);

  @override
  final BaseResponse<SendOtpResponse> response;

  @override
  String toString() {
    return 'SendOtpState.done(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendOtpStateLoaded &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$SendOtpStateLoadedCopyWith<_SendOtpStateLoaded> get copyWith =>
      __$SendOtpStateLoadedCopyWithImpl<_SendOtpStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<SendOtpResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return done(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<SendOtpResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return done?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<SendOtpResponse> response)? done,
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
    required TResult Function(_SendOtpInital value) initial,
    required TResult Function(SendOtpStateLoading value) loading,
    required TResult Function(_SendOtpStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendOtpInital value)? initial,
    TResult Function(SendOtpStateLoading value)? loading,
    TResult Function(_SendOtpStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtpInital value)? initial,
    TResult Function(SendOtpStateLoading value)? loading,
    TResult Function(_SendOtpStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _SendOtpStateLoaded implements SendOtpState {
  const factory _SendOtpStateLoaded(BaseResponse<SendOtpResponse> response) =
      _$_SendOtpStateLoaded;

  BaseResponse<SendOtpResponse> get response;
  @JsonKey(ignore: true)
  _$SendOtpStateLoadedCopyWith<_SendOtpStateLoaded> get copyWith =>
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
    extends _$SendOtpStateCopyWithImpl<$Res>
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
    return 'SendOtpState.error(failure: $failure)';
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
    required TResult Function(BaseResponse<SendOtpResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<SendOtpResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<SendOtpResponse> response)? done,
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
    required TResult Function(_SendOtpInital value) initial,
    required TResult Function(SendOtpStateLoading value) loading,
    required TResult Function(_SendOtpStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendOtpInital value)? initial,
    TResult Function(SendOtpStateLoading value)? loading,
    TResult Function(_SendOtpStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtpInital value)? initial,
    TResult Function(SendOtpStateLoading value)? loading,
    TResult Function(_SendOtpStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneNumberStateError implements SendOtpState {
  const factory _SendPhoneNumberStateError(Failure failure) =
      _$_SendPhoneNumberStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$SendPhoneNumberStateErrorCopyWith<_SendPhoneNumberStateError>
      get copyWith => throw _privateConstructorUsedError;
}
