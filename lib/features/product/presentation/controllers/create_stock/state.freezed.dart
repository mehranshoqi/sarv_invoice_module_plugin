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
class _$CreateStockStateTearOff {
  const _$CreateStockStateTearOff();

  _CreateStockInital initial() {
    return const _CreateStockInital();
  }

  CreateStockStateLoading loading() {
    return const CreateStockStateLoading();
  }

  _CreateStockStateLoaded done(BaseResponse<CreateStockResponse> response) {
    return _CreateStockStateLoaded(
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
const $CreateStockState = _$CreateStockStateTearOff();

/// @nodoc
mixin _$CreateStockState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateStockResponse> response) done,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateStockResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateStockResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateStockInital value) initial,
    required TResult Function(CreateStockStateLoading value) loading,
    required TResult Function(_CreateStockStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateStockInital value)? initial,
    TResult Function(CreateStockStateLoading value)? loading,
    TResult Function(_CreateStockStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateStockInital value)? initial,
    TResult Function(CreateStockStateLoading value)? loading,
    TResult Function(_CreateStockStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateStockStateCopyWith<$Res> {
  factory $CreateStockStateCopyWith(
          CreateStockState value, $Res Function(CreateStockState) then) =
      _$CreateStockStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateStockStateCopyWithImpl<$Res>
    implements $CreateStockStateCopyWith<$Res> {
  _$CreateStockStateCopyWithImpl(this._value, this._then);

  final CreateStockState _value;
  // ignore: unused_field
  final $Res Function(CreateStockState) _then;
}

/// @nodoc
abstract class _$CreateStockInitalCopyWith<$Res> {
  factory _$CreateStockInitalCopyWith(
          _CreateStockInital value, $Res Function(_CreateStockInital) then) =
      __$CreateStockInitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateStockInitalCopyWithImpl<$Res>
    extends _$CreateStockStateCopyWithImpl<$Res>
    implements _$CreateStockInitalCopyWith<$Res> {
  __$CreateStockInitalCopyWithImpl(
      _CreateStockInital _value, $Res Function(_CreateStockInital) _then)
      : super(_value, (v) => _then(v as _CreateStockInital));

  @override
  _CreateStockInital get _value => super._value as _CreateStockInital;
}

/// @nodoc

class _$_CreateStockInital implements _CreateStockInital {
  const _$_CreateStockInital();

  @override
  String toString() {
    return 'CreateStockState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CreateStockInital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateStockResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateStockResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateStockResponse> response)? done,
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
    required TResult Function(_CreateStockInital value) initial,
    required TResult Function(CreateStockStateLoading value) loading,
    required TResult Function(_CreateStockStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateStockInital value)? initial,
    TResult Function(CreateStockStateLoading value)? loading,
    TResult Function(_CreateStockStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateStockInital value)? initial,
    TResult Function(CreateStockStateLoading value)? loading,
    TResult Function(_CreateStockStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CreateStockInital implements CreateStockState {
  const factory _CreateStockInital() = _$_CreateStockInital;
}

/// @nodoc
abstract class $CreateStockStateLoadingCopyWith<$Res> {
  factory $CreateStockStateLoadingCopyWith(CreateStockStateLoading value,
          $Res Function(CreateStockStateLoading) then) =
      _$CreateStockStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateStockStateLoadingCopyWithImpl<$Res>
    extends _$CreateStockStateCopyWithImpl<$Res>
    implements $CreateStockStateLoadingCopyWith<$Res> {
  _$CreateStockStateLoadingCopyWithImpl(CreateStockStateLoading _value,
      $Res Function(CreateStockStateLoading) _then)
      : super(_value, (v) => _then(v as CreateStockStateLoading));

  @override
  CreateStockStateLoading get _value => super._value as CreateStockStateLoading;
}

/// @nodoc

class _$CreateStockStateLoading implements CreateStockStateLoading {
  const _$CreateStockStateLoading();

  @override
  String toString() {
    return 'CreateStockState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CreateStockStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateStockResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateStockResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateStockResponse> response)? done,
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
    required TResult Function(_CreateStockInital value) initial,
    required TResult Function(CreateStockStateLoading value) loading,
    required TResult Function(_CreateStockStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateStockInital value)? initial,
    TResult Function(CreateStockStateLoading value)? loading,
    TResult Function(_CreateStockStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateStockInital value)? initial,
    TResult Function(CreateStockStateLoading value)? loading,
    TResult Function(_CreateStockStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateStockStateLoading implements CreateStockState {
  const factory CreateStockStateLoading() = _$CreateStockStateLoading;
}

/// @nodoc
abstract class _$CreateStockStateLoadedCopyWith<$Res> {
  factory _$CreateStockStateLoadedCopyWith(_CreateStockStateLoaded value,
          $Res Function(_CreateStockStateLoaded) then) =
      __$CreateStockStateLoadedCopyWithImpl<$Res>;
  $Res call({BaseResponse<CreateStockResponse> response});
}

/// @nodoc
class __$CreateStockStateLoadedCopyWithImpl<$Res>
    extends _$CreateStockStateCopyWithImpl<$Res>
    implements _$CreateStockStateLoadedCopyWith<$Res> {
  __$CreateStockStateLoadedCopyWithImpl(_CreateStockStateLoaded _value,
      $Res Function(_CreateStockStateLoaded) _then)
      : super(_value, (v) => _then(v as _CreateStockStateLoaded));

  @override
  _CreateStockStateLoaded get _value => super._value as _CreateStockStateLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_CreateStockStateLoaded(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse<CreateStockResponse>,
    ));
  }
}

/// @nodoc

class _$_CreateStockStateLoaded implements _CreateStockStateLoaded {
  const _$_CreateStockStateLoaded(this.response);

  @override
  final BaseResponse<CreateStockResponse> response;

  @override
  String toString() {
    return 'CreateStockState.done(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateStockStateLoaded &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$CreateStockStateLoadedCopyWith<_CreateStockStateLoaded> get copyWith =>
      __$CreateStockStateLoadedCopyWithImpl<_CreateStockStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateStockResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return done(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateStockResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return done?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateStockResponse> response)? done,
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
    required TResult Function(_CreateStockInital value) initial,
    required TResult Function(CreateStockStateLoading value) loading,
    required TResult Function(_CreateStockStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateStockInital value)? initial,
    TResult Function(CreateStockStateLoading value)? loading,
    TResult Function(_CreateStockStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateStockInital value)? initial,
    TResult Function(CreateStockStateLoading value)? loading,
    TResult Function(_CreateStockStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _CreateStockStateLoaded implements CreateStockState {
  const factory _CreateStockStateLoaded(
      BaseResponse<CreateStockResponse> response) = _$_CreateStockStateLoaded;

  BaseResponse<CreateStockResponse> get response;
  @JsonKey(ignore: true)
  _$CreateStockStateLoadedCopyWith<_CreateStockStateLoaded> get copyWith =>
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
    extends _$CreateStockStateCopyWithImpl<$Res>
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
    return 'CreateStockState.error(failure: $failure)';
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
    required TResult Function(BaseResponse<CreateStockResponse> response) done,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateStockResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateStockResponse> response)? done,
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
    required TResult Function(_CreateStockInital value) initial,
    required TResult Function(CreateStockStateLoading value) loading,
    required TResult Function(_CreateStockStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateStockInital value)? initial,
    TResult Function(CreateStockStateLoading value)? loading,
    TResult Function(_CreateStockStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateStockInital value)? initial,
    TResult Function(CreateStockStateLoading value)? loading,
    TResult Function(_CreateStockStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneNumberStateError implements CreateStockState {
  const factory _SendPhoneNumberStateError(Failure failure) =
      _$_SendPhoneNumberStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$SendPhoneNumberStateErrorCopyWith<_SendPhoneNumberStateError>
      get copyWith => throw _privateConstructorUsedError;
}
