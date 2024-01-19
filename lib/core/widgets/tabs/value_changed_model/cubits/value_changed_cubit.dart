import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'value_changed_state.dart';

class ValueChangedCubit<Value> extends Cubit<ValueChangedState> {
  Value? value;
  final bool closeAble;

  ValueChangedCubit({this.value, this.closeAble = true})
      : super(ValueChangedInitial<Value>(value: value));

  void changeValue(Value value) async {
    this.value = value;
    emit(ValueChangedLoading<Value>(value: value));
    emit(GetValueSuccessfully<Value>(value: value));
  }

  @override
  Future<void> close() async {
    if (closeAble) super.close();
  }
}
