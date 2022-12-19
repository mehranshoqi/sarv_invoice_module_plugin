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
class _$CreateProductTypeStateTearOff {
  const _$CreateProductTypeStateTearOff();

  _CreateProductTypeInital initial() {
    return const _CreateProductTypeInital();
  }

  CreateProductTypeStateLoading loading() {
    return const CreateProductTypeStateLoading();
  }

  _CreateProductTypeStateLoaded done(
      BaseResponse<CreateProductTypeResponse> response) {
    return _CreateProductTypeStateLoaded(
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
const $CreateProductTypeState = _$CreateProductTypeStateTearOff();

/// @nodoc
mixin _$CreateProductTypeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateProductTypeResponse> response)
        done,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateProductTypeResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateProductTypeResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateProductTypeInital value) initial,
    required TResult Function(CreateProductTypeStateLoading value) loading,
    required TResult Function(_CreateProductTypeStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductTypeInital value)? initial,
    TResult Function(CreateProductTypeStateLoading value)? loading,
    TResult Function(_CreateProductTypeStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductTypeInital value)? initial,
    TResult Function(CreateProductTypeStateLoading value)? loading,
    TResult Function(_CreateProductTypeStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProductTypeStateCopyWith<$Res> {
  factory $CreateProductTypeStateCopyWith(CreateProductTypeState value,
          $Res Function(CreateProductTypeState) then) =
      _$CreateProductTypeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateProductTypeStateCopyWithImpl<$Res>
    implements $CreateProductTypeStateCopyWith<$Res> {
  _$CreateProductTypeStateCopyWithImpl(this._value, this._then);

  final CreateProductTypeState _value;
  // ignore: unused_field
  final $Res Function(CreateProductTypeState) _then;
}

/// @nodoc
abstract class _$CreateProductTypeInitalCopyWith<$Res> {
  factory _$CreateProductTypeInitalCopyWith(_CreateProductTypeInital value,
          $Res Function(_CreateProductTypeInital) then) =
      __$CreateProductTypeInitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateProductTypeInitalCopyWithImpl<$Res>
    extends _$CreateProductTypeStateCopyWithImpl<$Res>
    implements _$CreateProductTypeInitalCopyWith<$Res> {
  __$CreateProductTypeInitalCopyWithImpl(_CreateProductTypeInital _value,
      $Res Function(_CreateProductTypeInital) _then)
      : super(_value, (v) => _then(v as _CreateProductTypeInital));

  @override
  _CreateProductTypeInital get _value =>
      super._value as _CreateProductTypeInital;
}

/// @nodoc

class _$_CreateProductTypeInital implements _CreateProductTypeInital {
  const _$_CreateProductTypeInital();

  @override
  String toString() {
    return 'CreateProductTypeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CreateProductTypeInital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateProductTypeResponse> response)
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
    TResult Function(BaseResponse<CreateProductTypeResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateProductTypeResponse> response)? done,
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
    required TResult Function(_CreateProductTypeInital value) initial,
    required TResult Function(CreateProductTypeStateLoading value) loading,
    required TResult Function(_CreateProductTypeStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductTypeInital value)? initial,
    TResult Function(CreateProductTypeStateLoading value)? loading,
    TResult Function(_CreateProductTypeStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductTypeInital value)? initial,
    TResult Function(CreateProductTypeStateLoading value)? loading,
    TResult Function(_CreateProductTypeStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CreateProductTypeInital implements CreateProductTypeState {
  const factory _CreateProductTypeInital() = _$_CreateProductTypeInital;
}

/// @nodoc
abstract class $CreateProductTypeStateLoadingCopyWith<$Res> {
  factory $CreateProductTypeStateLoadingCopyWith(
          CreateProductTypeStateLoading value,
          $Res Function(CreateProductTypeStateLoading) then) =
      _$CreateProductTypeStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateProductTypeStateLoadingCopyWithImpl<$Res>
    extends _$CreateProductTypeStateCopyWithImpl<$Res>
    implements $CreateProductTypeStateLoadingCopyWith<$Res> {
  _$CreateProductTypeStateLoadingCopyWithImpl(
      CreateProductTypeStateLoading _value,
      $Res Function(CreateProductTypeStateLoading) _then)
      : super(_value, (v) => _then(v as CreateProductTypeStateLoading));

  @override
  CreateProductTypeStateLoading get _value =>
      super._value as CreateProductTypeStateLoading;
}

/// @nodoc

class _$CreateProductTypeStateLoading implements CreateProductTypeStateLoading {
  const _$CreateProductTypeStateLoading();

  @override
  String toString() {
    return 'CreateProductTypeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateProductTypeStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateProductTypeResponse> response)
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
    TResult Function(BaseResponse<CreateProductTypeResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateProductTypeResponse> response)? done,
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
    required TResult Function(_CreateProductTypeInital value) initial,
    required TResult Function(CreateProductTypeStateLoading value) loading,
    required TResult Function(_CreateProductTypeStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductTypeInital value)? initial,
    TResult Function(CreateProductTypeStateLoading value)? loading,
    TResult Function(_CreateProductTypeStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductTypeInital value)? initial,
    TResult Function(CreateProductTypeStateLoading value)? loading,
    TResult Function(_CreateProductTypeStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateProductTypeStateLoading implements CreateProductTypeState {
  const factory CreateProductTypeStateLoading() =
      _$CreateProductTypeStateLoading;
}

/// @nodoc
abstract class _$CreateProductTypeStateLoadedCopyWith<$Res> {
  factory _$CreateProductTypeStateLoadedCopyWith(
          _CreateProductTypeStateLoaded value,
          $Res Function(_CreateProductTypeStateLoaded) then) =
      __$CreateProductTypeStateLoadedCopyWithImpl<$Res>;
  $Res call({BaseResponse<CreateProductTypeResponse> response});
}

/// @nodoc
class __$CreateProductTypeStateLoadedCopyWithImpl<$Res>
    extends _$CreateProductTypeStateCopyWithImpl<$Res>
    implements _$CreateProductTypeStateLoadedCopyWith<$Res> {
  __$CreateProductTypeStateLoadedCopyWithImpl(
      _CreateProductTypeStateLoaded _value,
      $Res Function(_CreateProductTypeStateLoaded) _then)
      : super(_value, (v) => _then(v as _CreateProductTypeStateLoaded));

  @override
  _CreateProductTypeStateLoaded get _value =>
      super._value as _CreateProductTypeStateLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_CreateProductTypeStateLoaded(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse<CreateProductTypeResponse>,
    ));
  }
}

/// @nodoc

class _$_CreateProductTypeStateLoaded implements _CreateProductTypeStateLoaded {
  const _$_CreateProductTypeStateLoaded(this.response);

  @override
  final BaseResponse<CreateProductTypeResponse> response;

  @override
  String toString() {
    return 'CreateProductTypeState.done(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateProductTypeStateLoaded &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$CreateProductTypeStateLoadedCopyWith<_CreateProductTypeStateLoaded>
      get copyWith => __$CreateProductTypeStateLoadedCopyWithImpl<
          _CreateProductTypeStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BaseResponse<CreateProductTypeResponse> response)
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
    TResult Function(BaseResponse<CreateProductTypeResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return done?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateProductTypeResponse> response)? done,
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
    required TResult Function(_CreateProductTypeInital value) initial,
    required TResult Function(CreateProductTypeStateLoading value) loading,
    required TResult Function(_CreateProductTypeStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductTypeInital value)? initial,
    TResult Function(CreateProductTypeStateLoading value)? loading,
    TResult Function(_CreateProductTypeStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductTypeInital value)? initial,
    TResult Function(CreateProductTypeStateLoading value)? loading,
    TResult Function(_CreateProductTypeStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _CreateProductTypeStateLoaded implements CreateProductTypeState {
  const factory _CreateProductTypeStateLoaded(
          BaseResponse<CreateProductTypeResponse> response) =
      _$_CreateProductTypeStateLoaded;

  BaseResponse<CreateProductTypeResponse> get response;
  @JsonKey(ignore: true)
  _$CreateProductTypeStateLoadedCopyWith<_CreateProductTypeStateLoaded>
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
    extends _$CreateProductTypeStateCopyWithImpl<$Res>
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
    return 'CreateProductTypeState.error(failure: $failure)';
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
    required TResult Function(BaseResponse<CreateProductTypeResponse> response)
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
    TResult Function(BaseResponse<CreateProductTypeResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateProductTypeResponse> response)? done,
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
    required TResult Function(_CreateProductTypeInital value) initial,
    required TResult Function(CreateProductTypeStateLoading value) loading,
    required TResult Function(_CreateProductTypeStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreateProductTypeInital value)? initial,
    TResult Function(CreateProductTypeStateLoading value)? loading,
    TResult Function(_CreateProductTypeStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProductTypeInital value)? initial,
    TResult Function(CreateProductTypeStateLoading value)? loading,
    TResult Function(_CreateProductTypeStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneNumberStateError implements CreateProductTypeState {
  const factory _SendPhoneNumberStateError(Failure failure) =
      _$_SendPhoneNumberStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$SendPhoneNumberStateErrorCopyWith<_SendPhoneNumberStateError>
      get copyWith => throw _privateConstructorUsedError;
}
