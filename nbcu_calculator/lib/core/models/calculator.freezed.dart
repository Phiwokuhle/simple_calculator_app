// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Calculator {
  String get equation => throw _privateConstructorUsedError;
  bool? get shouldAppend => throw _privateConstructorUsedError;
  List<String> get history => throw _privateConstructorUsedError;
  String get result => throw _privateConstructorUsedError;

  /// Create a copy of Calculator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalculatorCopyWith<Calculator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorCopyWith<$Res> {
  factory $CalculatorCopyWith(
          Calculator value, $Res Function(Calculator) then) =
      _$CalculatorCopyWithImpl<$Res, Calculator>;
  @useResult
  $Res call(
      {String equation,
      bool? shouldAppend,
      List<String> history,
      String result});
}

/// @nodoc
class _$CalculatorCopyWithImpl<$Res, $Val extends Calculator>
    implements $CalculatorCopyWith<$Res> {
  _$CalculatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Calculator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equation = null,
    Object? shouldAppend = freezed,
    Object? history = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      equation: null == equation
          ? _value.equation
          : equation // ignore: cast_nullable_to_non_nullable
              as String,
      shouldAppend: freezed == shouldAppend
          ? _value.shouldAppend
          : shouldAppend // ignore: cast_nullable_to_non_nullable
              as bool?,
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<String>,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalculatorImplCopyWith<$Res>
    implements $CalculatorCopyWith<$Res> {
  factory _$$CalculatorImplCopyWith(
          _$CalculatorImpl value, $Res Function(_$CalculatorImpl) then) =
      __$$CalculatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String equation,
      bool? shouldAppend,
      List<String> history,
      String result});
}

/// @nodoc
class __$$CalculatorImplCopyWithImpl<$Res>
    extends _$CalculatorCopyWithImpl<$Res, _$CalculatorImpl>
    implements _$$CalculatorImplCopyWith<$Res> {
  __$$CalculatorImplCopyWithImpl(
      _$CalculatorImpl _value, $Res Function(_$CalculatorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Calculator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? equation = null,
    Object? shouldAppend = freezed,
    Object? history = null,
    Object? result = null,
  }) {
    return _then(_$CalculatorImpl(
      equation: null == equation
          ? _value.equation
          : equation // ignore: cast_nullable_to_non_nullable
              as String,
      shouldAppend: freezed == shouldAppend
          ? _value.shouldAppend
          : shouldAppend // ignore: cast_nullable_to_non_nullable
              as bool?,
      history: null == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<String>,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CalculatorImpl implements _Calculator {
  const _$CalculatorImpl(
      {this.equation = '',
      this.shouldAppend,
      final List<String> history = const [],
      this.result = ''})
      : _history = history;

  @override
  @JsonKey()
  final String equation;
  @override
  final bool? shouldAppend;
  final List<String> _history;
  @override
  @JsonKey()
  List<String> get history {
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  @JsonKey()
  final String result;

  @override
  String toString() {
    return 'Calculator(equation: $equation, shouldAppend: $shouldAppend, history: $history, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculatorImpl &&
            (identical(other.equation, equation) ||
                other.equation == equation) &&
            (identical(other.shouldAppend, shouldAppend) ||
                other.shouldAppend == shouldAppend) &&
            const DeepCollectionEquality().equals(other._history, _history) &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, equation, shouldAppend,
      const DeepCollectionEquality().hash(_history), result);

  /// Create a copy of Calculator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculatorImplCopyWith<_$CalculatorImpl> get copyWith =>
      __$$CalculatorImplCopyWithImpl<_$CalculatorImpl>(this, _$identity);
}

abstract class _Calculator implements Calculator {
  const factory _Calculator(
      {final String equation,
      final bool? shouldAppend,
      final List<String> history,
      final String result}) = _$CalculatorImpl;

  @override
  String get equation;
  @override
  bool? get shouldAppend;
  @override
  List<String> get history;
  @override
  String get result;

  /// Create a copy of Calculator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalculatorImplCopyWith<_$CalculatorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
