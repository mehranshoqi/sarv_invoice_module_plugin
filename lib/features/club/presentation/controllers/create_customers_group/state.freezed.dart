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
class _$CreateCustomersGroupStateTearOff {
  const _$CreateCustomersGroupStateTearOff();

  _SendNameInital initial() {
    return const _SendNameInital();
  }

  CreateCustomersGroupStateLoading loading() {
    return const CreateCustomersGroupStateLoading();
  }

  _CreateCustomersGroupStateLoaded done(
      BaseResponse<CreateCustomersGroupResponse> response) {
    return _CreateCustomersGroupStateLoaded(
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
const $CreateCustomersGroupState = _$CreateCustomersGroupStateTearOff();

/// @nodoc
mixin _$CreateCustomersGroupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            BaseResponse<CreateCustomersGroupResponse> response)
        done,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateCustomersGroupResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateCustomersGroupResponse> response)? done,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendNameInital value) initial,
    required TResult Function(CreateCustomersGroupStateLoading value) loading,
    required TResult Function(_CreateCustomersGroupStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(CreateCustomersGroupStateLoading value)? loading,
    TResult Function(_CreateCustomersGroupStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(CreateCustomersGroupStateLoading value)? loading,
    TResult Function(_CreateCustomersGroupStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCustomersGroupStateCopyWith<$Res> {
  factory $CreateCustomersGroupStateCopyWith(CreateCustomersGroupState value,
          $Res Function(CreateCustomersGroupState) then) =
      _$CreateCustomersGroupStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateCustomersGroupStateCopyWithImpl<$Res>
    implements $CreateCustomersGroupStateCopyWith<$Res> {
  _$CreateCustomersGroupStateCopyWithImpl(this._value, this._then);

  final CreateCustomersGroupState _value;
  // ignore: unused_field
  final $Res Function(CreateCustomersGroupState) _then;
}

/// @nodoc
abstract class _$SendNameInitalCopyWith<$Res> {
  factory _$SendNameInitalCopyWith(
          _SendNameInital value, $Res Function(_SendNameInital) then) =
      __$SendNameInitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$SendNameInitalCopyWithImpl<$Res>
    extends _$CreateCustomersGroupStateCopyWithImpl<$Res>
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
    return 'CreateCustomersGroupState.initial()';
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
    required TResult Function(
            BaseResponse<CreateCustomersGroupResponse> response)
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
    TResult Function(BaseResponse<CreateCustomersGroupResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateCustomersGroupResponse> response)? done,
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
    required TResult Function(CreateCustomersGroupStateLoading value) loading,
    required TResult Function(_CreateCustomersGroupStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(CreateCustomersGroupStateLoading value)? loading,
    TResult Function(_CreateCustomersGroupStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(CreateCustomersGroupStateLoading value)? loading,
    TResult Function(_CreateCustomersGroupStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SendNameInital implements CreateCustomersGroupState {
  const factory _SendNameInital() = _$_SendNameInital;
}

/// @nodoc
abstract class $CreateCustomersGroupStateLoadingCopyWith<$Res> {
  factory $CreateCustomersGroupStateLoadingCopyWith(
          CreateCustomersGroupStateLoading value,
          $Res Function(CreateCustomersGroupStateLoading) then) =
      _$CreateCustomersGroupStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateCustomersGroupStateLoadingCopyWithImpl<$Res>
    extends _$CreateCustomersGroupStateCopyWithImpl<$Res>
    implements $CreateCustomersGroupStateLoadingCopyWith<$Res> {
  _$CreateCustomersGroupStateLoadingCopyWithImpl(
      CreateCustomersGroupStateLoading _value,
      $Res Function(CreateCustomersGroupStateLoading) _then)
      : super(_value, (v) => _then(v as CreateCustomersGroupStateLoading));

  @override
  CreateCustomersGroupStateLoading get _value =>
      super._value as CreateCustomersGroupStateLoading;
}

/// @nodoc

class _$CreateCustomersGroupStateLoading
    implements CreateCustomersGroupStateLoading {
  const _$CreateCustomersGroupStateLoading();

  @override
  String toString() {
    return 'CreateCustomersGroupState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateCustomersGroupStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            BaseResponse<CreateCustomersGroupResponse> response)
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
    TResult Function(BaseResponse<CreateCustomersGroupResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateCustomersGroupResponse> response)? done,
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
    required TResult Function(CreateCustomersGroupStateLoading value) loading,
    required TResult Function(_CreateCustomersGroupStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(CreateCustomersGroupStateLoading value)? loading,
    TResult Function(_CreateCustomersGroupStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(CreateCustomersGroupStateLoading value)? loading,
    TResult Function(_CreateCustomersGroupStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateCustomersGroupStateLoading
    implements CreateCustomersGroupState {
  const factory CreateCustomersGroupStateLoading() =
      _$CreateCustomersGroupStateLoading;
}

/// @nodoc
abstract class _$CreateCustomersGroupStateLoadedCopyWith<$Res> {
  factory _$CreateCustomersGroupStateLoadedCopyWith(
          _CreateCustomersGroupStateLoaded value,
          $Res Function(_CreateCustomersGroupStateLoaded) then) =
      __$CreateCustomersGroupStateLoadedCopyWithImpl<$Res>;
  $Res call({BaseResponse<CreateCustomersGroupResponse> response});
}

/// @nodoc
class __$CreateCustomersGroupStateLoadedCopyWithImpl<$Res>
    extends _$CreateCustomersGroupStateCopyWithImpl<$Res>
    implements _$CreateCustomersGroupStateLoadedCopyWith<$Res> {
  __$CreateCustomersGroupStateLoadedCopyWithImpl(
      _CreateCustomersGroupStateLoaded _value,
      $Res Function(_CreateCustomersGroupStateLoaded) _then)
      : super(_value, (v) => _then(v as _CreateCustomersGroupStateLoaded));

  @override
  _CreateCustomersGroupStateLoaded get _value =>
      super._value as _CreateCustomersGroupStateLoaded;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_CreateCustomersGroupStateLoaded(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as BaseResponse<CreateCustomersGroupResponse>,
    ));
  }
}

/// @nodoc

class _$_CreateCustomersGroupStateLoaded
    implements _CreateCustomersGroupStateLoaded {
  const _$_CreateCustomersGroupStateLoaded(this.response);

  @override
  final BaseResponse<CreateCustomersGroupResponse> response;

  @override
  String toString() {
    return 'CreateCustomersGroupState.done(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateCustomersGroupStateLoaded &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$CreateCustomersGroupStateLoadedCopyWith<_CreateCustomersGroupStateLoaded>
      get copyWith => __$CreateCustomersGroupStateLoadedCopyWithImpl<
          _CreateCustomersGroupStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            BaseResponse<CreateCustomersGroupResponse> response)
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
    TResult Function(BaseResponse<CreateCustomersGroupResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return done?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateCustomersGroupResponse> response)? done,
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
    required TResult Function(CreateCustomersGroupStateLoading value) loading,
    required TResult Function(_CreateCustomersGroupStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(CreateCustomersGroupStateLoading value)? loading,
    TResult Function(_CreateCustomersGroupStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(CreateCustomersGroupStateLoading value)? loading,
    TResult Function(_CreateCustomersGroupStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _CreateCustomersGroupStateLoaded
    implements CreateCustomersGroupState {
  const factory _CreateCustomersGroupStateLoaded(
          BaseResponse<CreateCustomersGroupResponse> response) =
      _$_CreateCustomersGroupStateLoaded;

  BaseResponse<CreateCustomersGroupResponse> get response;
  @JsonKey(ignore: true)
  _$CreateCustomersGroupStateLoadedCopyWith<_CreateCustomersGroupStateLoaded>
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
    extends _$CreateCustomersGroupStateCopyWithImpl<$Res>
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
    return 'CreateCustomersGroupState.error(failure: $failure)';
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
    required TResult Function(
            BaseResponse<CreateCustomersGroupResponse> response)
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
    TResult Function(BaseResponse<CreateCustomersGroupResponse> response)? done,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BaseResponse<CreateCustomersGroupResponse> response)? done,
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
    required TResult Function(CreateCustomersGroupStateLoading value) loading,
    required TResult Function(_CreateCustomersGroupStateLoaded value) done,
    required TResult Function(_SendPhoneNumberStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(CreateCustomersGroupStateLoading value)? loading,
    TResult Function(_CreateCustomersGroupStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendNameInital value)? initial,
    TResult Function(CreateCustomersGroupStateLoading value)? loading,
    TResult Function(_CreateCustomersGroupStateLoaded value)? done,
    TResult Function(_SendPhoneNumberStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneNumberStateError implements CreateCustomersGroupState {
  const factory _SendPhoneNumberStateError(Failure failure) =
      _$_SendPhoneNumberStateError;

  Failure get failure;
  @JsonKey(ignore: true)
  _$SendPhoneNumberStateErrorCopyWith<_SendPhoneNumberStateError>
      get copyWith => throw _privateConstructorUsedError;
}
