part of 'value_changed_cubit.dart';

@immutable
abstract class ValueChangedState<Value> {
  final Value value;

  const ValueChangedState({required this.value});
}

class ValueChangedInitial<Value> extends ValueChangedState {
  const ValueChangedInitial({required super.value});
}

class ValueChangedLoading<Value> extends ValueChangedState {
  const ValueChangedLoading({required super.value});
}

class GetValueSuccessfully<Value> extends ValueChangedState {
  const GetValueSuccessfully({required super.value});
}
