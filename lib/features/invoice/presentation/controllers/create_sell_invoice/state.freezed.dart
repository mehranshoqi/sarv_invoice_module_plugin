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
class _$CreateSellInvoiceStateTearOff {
  const _$CreateSellInvoiceStateTearOff();

  _CreateSellInvoiceInital initial() {
    return const _CreateSellInvoiceInital();
  }

  CreateSellInvoiceStateLoading loading() {
    return const CreateSellInvoiceStateLoading();
  }

  _CreateSellInvoiceStateLoaded done(
      BaseResponse<CreateSellInvoiceResponse> response) {
    return _CreateSellInvoiceStateLoaded(
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
const $CreateSellInvoiceState = _$CreateSellInvoiceStateTearOff();

/// @nodoc
mixin _$CreateSellInvoiceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateSellInvoiceResponse> response)
        done,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateSellInvoiceResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateSellInvoiceResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateSellInvoiceInital value) initial,
    required TResult Function(CreateSellInvoiceStateLoading value) loading,
    required TResult Function(_CreateSellInvoiceStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateSellInvoiceInital value)? initial,
    TResult Function(CreateSellInvoiceStateLoading value)? loading,
    TResult Function(_CreateSellInvoiceStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateSellInvoiceInital value)? initial,
    TResult Function(CreateSellInvoiceStateLoading value)? loading,
    TResult Function(_CreateSellInvoiceStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSellInvoiceStateCopyWith<$Res> {
  factory $CreateSellInvoiceStateCopyWith(CreateSellInvoiceState value,
          $Res Function(CreateSellInvoiceState) then) =
      _$CreateSellInvoiceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateSellInvoiceStateCopyWithImpl<$Res>
    implements $CreateSellInvoiceStateCopyWith<$Res> {
  _$CreateSellInvoiceStateCopyWithImpl(this._value, this._then);

  final CreateSellInvoiceState _value;
  // ignore: unused_field
  final $Res Function(CreateSellInvoiceState) _then;
}

/// @nodoc
abstract class _$CreateSellInvoiceInitalCopyWith<$Res> {
  factory _$CreateSellInvoiceInitalCopyWith(_CreateSellInvoiceInital value,
          $Res Function(_CreateSellInvoiceInital) then) =
      __$CreateSellInvoiceInitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateSellInvoiceInitalCopyWithImpl<$Res>
    extends _$CreateSellInvoiceStateCopyWithImpl<$Res>
    implements _$CreateSellInvoiceInitalCopyWith<$Res> {
  __$CreateSellInvoiceInitalCopyWithImpl(_CreateSellInvoiceInital _value,
      $Res Function(_CreateSellInvoiceInital) _then)
      : super(_value, (v) => _then(v as _CreateSellInvoiceInital));

  @override
  _CreateSellInvoiceInital get _value =>
      super._value as _CreateSellInvoiceInital;
}

/// @nodoc

class _$_CreateSellInvoiceInital implements _CreateSellInvoiceInital {
  const _$_CreateSellInvoiceInital();

  @override
  String toString() {
    return 'CreateSellInvoiceState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CreateSellInvoiceInital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateSellInvoiceResponse> response)
        done,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateSellInvoiceResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateSellInvoiceResponse> response)? done,
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
    required TResult Function(_CreateSellInvoiceInital value) initial,
    required TResult Function(CreateSellInvoiceStateLoading value) loading,
    required TResult Function(_CreateSellInvoiceStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateSellInvoiceInital value)? initial,
    TResult Function(CreateSellInvoiceStateLoading value)? loading,
    TResult Function(_CreateSellInvoiceStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateSellInvoiceInital value)? initial,
    TResult Function(CreateSellInvoiceStateLoading value)? loading,
    TResult Function(_CreateSellInvoiceStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CreateSellInvoiceInital implements CreateSellInvoiceState {
  const factory _CreateSellInvoiceInital() = _$_CreateSellInvoiceInital;
}

/// @nodoc
abstract class $CreateSellInvoiceStateLoadingCopyWith<$Res> {
  factory $CreateSellInvoiceStateLoadingCopyWith(
          CreateSellInvoiceStateLoading value,
          $Res Function(CreateSellInvoiceStateLoading) then) =
      _$CreateSellInvoiceStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateSellInvoiceStateLoadingCopyWithImpl<$Res>
    extends _$CreateSellInvoiceStateCopyWithImpl<$Res>
    implements $CreateSellInvoiceStateLoadingCopyWith<$Res> {
  _$CreateSellInvoiceStateLoadingCopyWithImpl(
      CreateSellInvoiceStateLoading _value,
      $Res Function(CreateSellInvoiceStateLoading) _then)
      : super(_value, (v) => _then(v as CreateSellInvoiceStateLoading));

  @override
  CreateSellInvoiceStateLoading get _value =>
      super._value as CreateSellInvoiceStateLoading;
}

/// @nodoc

class _$CreateSellInvoiceStateLoading implements CreateSellInvoiceStateLoading {
  const _$CreateSellInvoiceStateLoading();

  @override
  String toString() {
    return 'CreateSellInvoiceState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateSellInvoiceStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateSellInvoiceResponse> response)
        done,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateSellInvoiceResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateSellInvoiceResponse> response)? done,
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
    required TResult Function(_CreateSellInvoiceInital value) initial,
    required TResult Function(CreateSellInvoiceStateLoading value) loading,
    required TResult Function(_CreateSellInvoiceStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateSellInvoiceInital value)? initial,
    TResult Function(CreateSellInvoiceStateLoading value)? loading,
    TResult Function(_CreateSellInvoiceStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateSellInvoiceInital value)? initial,
    TResult Function(CreateSellInvoiceStateLoading value)? loading,
    TResult Function(_CreateSellInvoiceStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateSellInvoiceStateLoading implements CreateSellInvoiceState {
  const factory CreateSellInvoiceStateLoading() =
      _$CreateSellInvoiceStateLoading;
}

/// @nodoc
abstract class _$CreateSellInvoiceStateLoadedCopyWith<$Res> {
  factory _$CreateSellInvoiceStateLoadedCopyWith(
          _CreateSellInvoiceStateLoaded value,
          $Res Function(_CreateSellInvoiceStateLoaded) then) =
      __$CreateSellInvoiceStateLoadedCopyWithImpl<$Res>;
  $Res call({BaseResponse<CreateSellInvoiceResponse> response});
}

/// @nodoc
class __$CreateSellInvoiceStateLoadedCopyWithImpl<$Res>
    extends _$CreateSellInvoiceStateCopyWithImpl<$Res>
    implements _$CreateSellInvoiceStateLoadedCopyWith<$Res> {
  __$CreateSellInvoiceStateLoadedCopyWithImpl(
      _CreateSellInvoiceStateLoaded _value,
      $Res Function(_CreateSellInvoiceStateLoaded) _then)
      : super(_value, (v) => _then(v as _CreateSellInvoiceStateLoaded));

  @override
  _CreateSellInvoiceStateLoaded get _value =>
      super._value as _CreateSellInvoiceStateLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_CreateSellInvoiceStateLoaded(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse<CreateSellInvoiceResponse>,
    ));
  }
}

/// @nodoc

class _$_CreateSellInvoiceStateLoaded implements _CreateSellInvoiceStateLoaded {
  const _$_CreateSellInvoiceStateLoaded(this.response);

  @override
  final BaseResponse<CreateSellInvoiceResponse> response;

  @override
  String toString() {
    return 'CreateSellInvoiceState.done(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateSellInvoiceStateLoaded &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$CreateSellInvoiceStateLoadedCopyWith<_CreateSellInvoiceStateLoaded>
      get copyWith => __$CreateSellInvoiceStateLoadedCopyWithImpl<
          _CreateSellInvoiceStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateSellInvoiceResponse> response)
        done,
    required TResult Function(Failure failure) error,
  }) {
    return done(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateSellInvoiceResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return done?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateSellInvoiceResponse> response)? done,
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
    required TResult Function(_CreateSellInvoiceInital value) initial,
    required TResult Function(CreateSellInvoiceStateLoading value) loading,
    required TResult Function(_CreateSellInvoiceStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateSellInvoiceInital value)? initial,
    TResult Function(CreateSellInvoiceStateLoading value)? loading,
    TResult Function(_CreateSellInvoiceStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateSellInvoiceInital value)? initial,
    TResult Function(CreateSellInvoiceStateLoading value)? loading,
    TResult Function(_CreateSellInvoiceStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _CreateSellInvoiceStateLoaded implements CreateSellInvoiceState {
  const factory _CreateSellInvoiceStateLoaded(
          BaseResponse<CreateSellInvoiceResponse> response) =
      _$_CreateSellInvoiceStateLoaded;

  BaseResponse<CreateSellInvoiceResponse> get response;
  @JsonKey(ignore: true)
  _$CreateSellInvoiceStateLoadedCopyWith<_CreateSellInvoiceStateLoaded>
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
    extends _$CreateSellInvoiceStateCopyWithImpl<$Res>
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
    return 'CreateSellInvoiceState.error(failure: $failure)';
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
    required TResult Function(BaseResponse<CreateSellInvoiceResponse> response)
        done,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateSellInvoiceResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateSellInvoiceResponse> response)? done,
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
    required TResult Function(_CreateSellInvoiceInital value) initial,
    required TResult Function(CreateSellInvoiceStateLoading value) loading,
    required TResult Function(_CreateSellInvoiceStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateSellInvoiceInital value)? initial,
    TResult Function(CreateSellInvoiceStateLoading value)? loading,
    TResult Function(_CreateSellInvoiceStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateSellInvoiceInital value)? initial,
    TResult Function(CreateSellInvoiceStateLoading value)? loading,
    TResult Function(_CreateSellInvoiceStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneNumberStateError implements CreateSellInvoiceState {
  const factory _SendPhoneNumberStateError(Failure failure) =
      _$_SendPhoneNumberStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$SendPhoneNumberStateErrorCopyWith<_SendPhoneNumberStateError>
      get copyWith => throw _privateConstructorUsedError;
}
