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
class _$CreateBuyInvoiceStateTearOff {
  const _$CreateBuyInvoiceStateTearOff();

  _CreateBuyInvoiceInital initial() {
    return const _CreateBuyInvoiceInital();
  }

  CreateBuyInvoiceStateLoading loading() {
    return const CreateBuyInvoiceStateLoading();
  }

  _CreateBuyInvoiceStateLoaded done(
      BaseResponse<CreateBuyInvoiceResponse> response) {
    return _CreateBuyInvoiceStateLoaded(
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
const $CreateBuyInvoiceState = _$CreateBuyInvoiceStateTearOff();

/// @nodoc
mixin _$CreateBuyInvoiceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateBuyInvoiceResponse> response)
        done,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateBuyInvoiceResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateBuyInvoiceResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateBuyInvoiceInital value) initial,
    required TResult Function(CreateBuyInvoiceStateLoading value) loading,
    required TResult Function(_CreateBuyInvoiceStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateBuyInvoiceInital value)? initial,
    TResult Function(CreateBuyInvoiceStateLoading value)? loading,
    TResult Function(_CreateBuyInvoiceStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateBuyInvoiceInital value)? initial,
    TResult Function(CreateBuyInvoiceStateLoading value)? loading,
    TResult Function(_CreateBuyInvoiceStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBuyInvoiceStateCopyWith<$Res> {
  factory $CreateBuyInvoiceStateCopyWith(CreateBuyInvoiceState value,
          $Res Function(CreateBuyInvoiceState) then) =
      _$CreateBuyInvoiceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateBuyInvoiceStateCopyWithImpl<$Res>
    implements $CreateBuyInvoiceStateCopyWith<$Res> {
  _$CreateBuyInvoiceStateCopyWithImpl(this._value, this._then);

  final CreateBuyInvoiceState _value;
  // ignore: unused_field
  final $Res Function(CreateBuyInvoiceState) _then;
}

/// @nodoc
abstract class _$CreateBuyInvoiceInitalCopyWith<$Res> {
  factory _$CreateBuyInvoiceInitalCopyWith(_CreateBuyInvoiceInital value,
          $Res Function(_CreateBuyInvoiceInital) then) =
      __$CreateBuyInvoiceInitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateBuyInvoiceInitalCopyWithImpl<$Res>
    extends _$CreateBuyInvoiceStateCopyWithImpl<$Res>
    implements _$CreateBuyInvoiceInitalCopyWith<$Res> {
  __$CreateBuyInvoiceInitalCopyWithImpl(_CreateBuyInvoiceInital _value,
      $Res Function(_CreateBuyInvoiceInital) _then)
      : super(_value, (v) => _then(v as _CreateBuyInvoiceInital));

  @override
  _CreateBuyInvoiceInital get _value => super._value as _CreateBuyInvoiceInital;
}

/// @nodoc

class _$_CreateBuyInvoiceInital implements _CreateBuyInvoiceInital {
  const _$_CreateBuyInvoiceInital();

  @override
  String toString() {
    return 'CreateBuyInvoiceState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CreateBuyInvoiceInital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateBuyInvoiceResponse> response)
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
    TResult Function(BaseResponse<CreateBuyInvoiceResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateBuyInvoiceResponse> response)? done,
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
    required TResult Function(_CreateBuyInvoiceInital value) initial,
    required TResult Function(CreateBuyInvoiceStateLoading value) loading,
    required TResult Function(_CreateBuyInvoiceStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateBuyInvoiceInital value)? initial,
    TResult Function(CreateBuyInvoiceStateLoading value)? loading,
    TResult Function(_CreateBuyInvoiceStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateBuyInvoiceInital value)? initial,
    TResult Function(CreateBuyInvoiceStateLoading value)? loading,
    TResult Function(_CreateBuyInvoiceStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CreateBuyInvoiceInital implements CreateBuyInvoiceState {
  const factory _CreateBuyInvoiceInital() = _$_CreateBuyInvoiceInital;
}

/// @nodoc
abstract class $CreateBuyInvoiceStateLoadingCopyWith<$Res> {
  factory $CreateBuyInvoiceStateLoadingCopyWith(
          CreateBuyInvoiceStateLoading value,
          $Res Function(CreateBuyInvoiceStateLoading) then) =
      _$CreateBuyInvoiceStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateBuyInvoiceStateLoadingCopyWithImpl<$Res>
    extends _$CreateBuyInvoiceStateCopyWithImpl<$Res>
    implements $CreateBuyInvoiceStateLoadingCopyWith<$Res> {
  _$CreateBuyInvoiceStateLoadingCopyWithImpl(
      CreateBuyInvoiceStateLoading _value,
      $Res Function(CreateBuyInvoiceStateLoading) _then)
      : super(_value, (v) => _then(v as CreateBuyInvoiceStateLoading));

  @override
  CreateBuyInvoiceStateLoading get _value =>
      super._value as CreateBuyInvoiceStateLoading;
}

/// @nodoc

class _$CreateBuyInvoiceStateLoading implements CreateBuyInvoiceStateLoading {
  const _$CreateBuyInvoiceStateLoading();

  @override
  String toString() {
    return 'CreateBuyInvoiceState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateBuyInvoiceStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateBuyInvoiceResponse> response)
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
    TResult Function(BaseResponse<CreateBuyInvoiceResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateBuyInvoiceResponse> response)? done,
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
    required TResult Function(_CreateBuyInvoiceInital value) initial,
    required TResult Function(CreateBuyInvoiceStateLoading value) loading,
    required TResult Function(_CreateBuyInvoiceStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateBuyInvoiceInital value)? initial,
    TResult Function(CreateBuyInvoiceStateLoading value)? loading,
    TResult Function(_CreateBuyInvoiceStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateBuyInvoiceInital value)? initial,
    TResult Function(CreateBuyInvoiceStateLoading value)? loading,
    TResult Function(_CreateBuyInvoiceStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateBuyInvoiceStateLoading implements CreateBuyInvoiceState {
  const factory CreateBuyInvoiceStateLoading() = _$CreateBuyInvoiceStateLoading;
}

/// @nodoc
abstract class _$CreateBuyInvoiceStateLoadedCopyWith<$Res> {
  factory _$CreateBuyInvoiceStateLoadedCopyWith(
          _CreateBuyInvoiceStateLoaded value,
          $Res Function(_CreateBuyInvoiceStateLoaded) then) =
      __$CreateBuyInvoiceStateLoadedCopyWithImpl<$Res>;
  $Res call({BaseResponse<CreateBuyInvoiceResponse> response});
}

/// @nodoc
class __$CreateBuyInvoiceStateLoadedCopyWithImpl<$Res>
    extends _$CreateBuyInvoiceStateCopyWithImpl<$Res>
    implements _$CreateBuyInvoiceStateLoadedCopyWith<$Res> {
  __$CreateBuyInvoiceStateLoadedCopyWithImpl(
      _CreateBuyInvoiceStateLoaded _value,
      $Res Function(_CreateBuyInvoiceStateLoaded) _then)
      : super(_value, (v) => _then(v as _CreateBuyInvoiceStateLoaded));

  @override
  _CreateBuyInvoiceStateLoaded get _value =>
      super._value as _CreateBuyInvoiceStateLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_CreateBuyInvoiceStateLoaded(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse<CreateBuyInvoiceResponse>,
    ));
  }
}

/// @nodoc

class _$_CreateBuyInvoiceStateLoaded implements _CreateBuyInvoiceStateLoaded {
  const _$_CreateBuyInvoiceStateLoaded(this.response);

  @override
  final BaseResponse<CreateBuyInvoiceResponse> response;

  @override
  String toString() {
    return 'CreateBuyInvoiceState.done(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateBuyInvoiceStateLoaded &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$CreateBuyInvoiceStateLoadedCopyWith<_CreateBuyInvoiceStateLoaded>
      get copyWith => __$CreateBuyInvoiceStateLoadedCopyWithImpl<
          _CreateBuyInvoiceStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateBuyInvoiceResponse> response)
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
    TResult Function(BaseResponse<CreateBuyInvoiceResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return done?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateBuyInvoiceResponse> response)? done,
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
    required TResult Function(_CreateBuyInvoiceInital value) initial,
    required TResult Function(CreateBuyInvoiceStateLoading value) loading,
    required TResult Function(_CreateBuyInvoiceStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateBuyInvoiceInital value)? initial,
    TResult Function(CreateBuyInvoiceStateLoading value)? loading,
    TResult Function(_CreateBuyInvoiceStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateBuyInvoiceInital value)? initial,
    TResult Function(CreateBuyInvoiceStateLoading value)? loading,
    TResult Function(_CreateBuyInvoiceStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _CreateBuyInvoiceStateLoaded implements CreateBuyInvoiceState {
  const factory _CreateBuyInvoiceStateLoaded(
          BaseResponse<CreateBuyInvoiceResponse> response) =
      _$_CreateBuyInvoiceStateLoaded;

  BaseResponse<CreateBuyInvoiceResponse> get response;
  @JsonKey(ignore: true)
  _$CreateBuyInvoiceStateLoadedCopyWith<_CreateBuyInvoiceStateLoaded>
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
    extends _$CreateBuyInvoiceStateCopyWithImpl<$Res>
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
    return 'CreateBuyInvoiceState.error(failure: $failure)';
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
    required TResult Function(BaseResponse<CreateBuyInvoiceResponse> response)
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
    TResult Function(BaseResponse<CreateBuyInvoiceResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateBuyInvoiceResponse> response)? done,
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
    required TResult Function(_CreateBuyInvoiceInital value) initial,
    required TResult Function(CreateBuyInvoiceStateLoading value) loading,
    required TResult Function(_CreateBuyInvoiceStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateBuyInvoiceInital value)? initial,
    TResult Function(CreateBuyInvoiceStateLoading value)? loading,
    TResult Function(_CreateBuyInvoiceStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateBuyInvoiceInital value)? initial,
    TResult Function(CreateBuyInvoiceStateLoading value)? loading,
    TResult Function(_CreateBuyInvoiceStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneNumberStateError implements CreateBuyInvoiceState {
  const factory _SendPhoneNumberStateError(Failure failure) =
      _$_SendPhoneNumberStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$SendPhoneNumberStateErrorCopyWith<_SendPhoneNumberStateError>
      get copyWith => throw _privateConstructorUsedError;
}
