import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/value_changed_cubit.dart';

typedef ValueBuilder<Value> = Widget Function(Value value);
typedef ValueReceived<Value> = void Function(Value value);

class ValueChangedListener<Value> extends StatefulWidget {
  final void Function(ValueChangedCubit<Value> cubit)? onCubitCreated;

  final ValueReceived<Value>? onValueChanged;
  final bool fromProvider;
  final Value? initialValue;
  final ValueChangedCubit<Value>? cubit;
  final Widget? child;

  const ValueChangedListener({
    super.key,
    this.initialValue,
    this.cubit,
    this.onCubitCreated,
    this.onValueChanged,
    this.fromProvider = true,
    this.child,
  });

  @override
  State<ValueChangedListener<Value>> createState() =>
      _ValueChangedListenerState<Value>();
}

class _ValueChangedListenerState<Value>
    extends State<ValueChangedListener<Value>> {
  late ValueChangedCubit<Value> cubit;

  @override
  void initState() {
    super.initState();
    if (widget.fromProvider) {
      cubit = context.read<ValueChangedCubit<Value>>();
    } else if (widget.cubit != null) {
      cubit = widget.cubit!;
    } else if (widget.initialValue != null) {
      cubit = ValueChangedCubit<Value>(value: widget.initialValue);
    }
    if (widget.onCubitCreated != null) widget.onCubitCreated!(cubit);
  }

  @override
  void dispose() {
    cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ValueChangedCubit, ValueChangedState>(
      bloc: cubit,
      child: widget.child ?? const SizedBox(),
      listener: (context, state) {
        if (state is GetValueSuccessfully<Value> &&
            widget.onValueChanged != null) {
          widget.onValueChanged!(state.value);
        }
      },
    );
  }
}
