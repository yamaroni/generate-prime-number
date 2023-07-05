// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prime_generator_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PrimeGeneratorEvent {
  String get startNumber => throw _privateConstructorUsedError;
  String get endNumber => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String startNumber, String endNumber)
        primeGenerated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String startNumber, String endNumber)? primeGenerated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String startNumber, String endNumber)? primeGenerated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PrimeGenerated value) primeGenerated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PrimeGenerated value)? primeGenerated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PrimeGenerated value)? primeGenerated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrimeGeneratorEventCopyWith<PrimeGeneratorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrimeGeneratorEventCopyWith<$Res> {
  factory $PrimeGeneratorEventCopyWith(
          PrimeGeneratorEvent value, $Res Function(PrimeGeneratorEvent) then) =
      _$PrimeGeneratorEventCopyWithImpl<$Res, PrimeGeneratorEvent>;
  @useResult
  $Res call({String startNumber, String endNumber});
}

/// @nodoc
class _$PrimeGeneratorEventCopyWithImpl<$Res, $Val extends PrimeGeneratorEvent>
    implements $PrimeGeneratorEventCopyWith<$Res> {
  _$PrimeGeneratorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startNumber = null,
    Object? endNumber = null,
  }) {
    return _then(_value.copyWith(
      startNumber: null == startNumber
          ? _value.startNumber
          : startNumber // ignore: cast_nullable_to_non_nullable
              as String,
      endNumber: null == endNumber
          ? _value.endNumber
          : endNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrimeGeneratedCopyWith<$Res>
    implements $PrimeGeneratorEventCopyWith<$Res> {
  factory _$$PrimeGeneratedCopyWith(
          _$PrimeGenerated value, $Res Function(_$PrimeGenerated) then) =
      __$$PrimeGeneratedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String startNumber, String endNumber});
}

/// @nodoc
class __$$PrimeGeneratedCopyWithImpl<$Res>
    extends _$PrimeGeneratorEventCopyWithImpl<$Res, _$PrimeGenerated>
    implements _$$PrimeGeneratedCopyWith<$Res> {
  __$$PrimeGeneratedCopyWithImpl(
      _$PrimeGenerated _value, $Res Function(_$PrimeGenerated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startNumber = null,
    Object? endNumber = null,
  }) {
    return _then(_$PrimeGenerated(
      startNumber: null == startNumber
          ? _value.startNumber
          : startNumber // ignore: cast_nullable_to_non_nullable
              as String,
      endNumber: null == endNumber
          ? _value.endNumber
          : endNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PrimeGenerated implements PrimeGenerated {
  const _$PrimeGenerated({required this.startNumber, required this.endNumber});

  @override
  final String startNumber;
  @override
  final String endNumber;

  @override
  String toString() {
    return 'PrimeGeneratorEvent.primeGenerated(startNumber: $startNumber, endNumber: $endNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrimeGenerated &&
            (identical(other.startNumber, startNumber) ||
                other.startNumber == startNumber) &&
            (identical(other.endNumber, endNumber) ||
                other.endNumber == endNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startNumber, endNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrimeGeneratedCopyWith<_$PrimeGenerated> get copyWith =>
      __$$PrimeGeneratedCopyWithImpl<_$PrimeGenerated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String startNumber, String endNumber)
        primeGenerated,
  }) {
    return primeGenerated(startNumber, endNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String startNumber, String endNumber)? primeGenerated,
  }) {
    return primeGenerated?.call(startNumber, endNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String startNumber, String endNumber)? primeGenerated,
    required TResult orElse(),
  }) {
    if (primeGenerated != null) {
      return primeGenerated(startNumber, endNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PrimeGenerated value) primeGenerated,
  }) {
    return primeGenerated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PrimeGenerated value)? primeGenerated,
  }) {
    return primeGenerated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PrimeGenerated value)? primeGenerated,
    required TResult orElse(),
  }) {
    if (primeGenerated != null) {
      return primeGenerated(this);
    }
    return orElse();
  }
}

abstract class PrimeGenerated implements PrimeGeneratorEvent {
  const factory PrimeGenerated(
      {required final String startNumber,
      required final String endNumber}) = _$PrimeGenerated;

  @override
  String get startNumber;
  @override
  String get endNumber;
  @override
  @JsonKey(ignore: true)
  _$$PrimeGeneratedCopyWith<_$PrimeGenerated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PrimeGeneratorState {
  Option<Either<String, List<int>>> get resultGenerator =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrimeGeneratorStateCopyWith<PrimeGeneratorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrimeGeneratorStateCopyWith<$Res> {
  factory $PrimeGeneratorStateCopyWith(
          PrimeGeneratorState value, $Res Function(PrimeGeneratorState) then) =
      _$PrimeGeneratorStateCopyWithImpl<$Res, PrimeGeneratorState>;
  @useResult
  $Res call({Option<Either<String, List<int>>> resultGenerator});
}

/// @nodoc
class _$PrimeGeneratorStateCopyWithImpl<$Res, $Val extends PrimeGeneratorState>
    implements $PrimeGeneratorStateCopyWith<$Res> {
  _$PrimeGeneratorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultGenerator = null,
  }) {
    return _then(_value.copyWith(
      resultGenerator: null == resultGenerator
          ? _value.resultGenerator
          : resultGenerator // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, List<int>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PrimeGeneratorStateCopyWith<$Res>
    implements $PrimeGeneratorStateCopyWith<$Res> {
  factory _$$_PrimeGeneratorStateCopyWith(_$_PrimeGeneratorState value,
          $Res Function(_$_PrimeGeneratorState) then) =
      __$$_PrimeGeneratorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Option<Either<String, List<int>>> resultGenerator});
}

/// @nodoc
class __$$_PrimeGeneratorStateCopyWithImpl<$Res>
    extends _$PrimeGeneratorStateCopyWithImpl<$Res, _$_PrimeGeneratorState>
    implements _$$_PrimeGeneratorStateCopyWith<$Res> {
  __$$_PrimeGeneratorStateCopyWithImpl(_$_PrimeGeneratorState _value,
      $Res Function(_$_PrimeGeneratorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultGenerator = null,
  }) {
    return _then(_$_PrimeGeneratorState(
      resultGenerator: null == resultGenerator
          ? _value.resultGenerator
          : resultGenerator // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, List<int>>>,
    ));
  }
}

/// @nodoc

class _$_PrimeGeneratorState implements _PrimeGeneratorState {
  const _$_PrimeGeneratorState({required this.resultGenerator});

  @override
  final Option<Either<String, List<int>>> resultGenerator;

  @override
  String toString() {
    return 'PrimeGeneratorState(resultGenerator: $resultGenerator)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrimeGeneratorState &&
            (identical(other.resultGenerator, resultGenerator) ||
                other.resultGenerator == resultGenerator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resultGenerator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrimeGeneratorStateCopyWith<_$_PrimeGeneratorState> get copyWith =>
      __$$_PrimeGeneratorStateCopyWithImpl<_$_PrimeGeneratorState>(
          this, _$identity);
}

abstract class _PrimeGeneratorState implements PrimeGeneratorState {
  const factory _PrimeGeneratorState(
          {required final Option<Either<String, List<int>>> resultGenerator}) =
      _$_PrimeGeneratorState;

  @override
  Option<Either<String, List<int>>> get resultGenerator;
  @override
  @JsonKey(ignore: true)
  _$$_PrimeGeneratorStateCopyWith<_$_PrimeGeneratorState> get copyWith =>
      throw _privateConstructorUsedError;
}
