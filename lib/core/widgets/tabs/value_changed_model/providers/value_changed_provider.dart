import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/value_changed_cubit.dart';

class ValueChangedProvider<Value> extends StatelessWidget {
  const ValueChangedProvider({
    super.key,
    this.initialValue,
    this.builder,
    this.child,
    this.closeAble = true,
    this.cubit,
  });

  final Value? initialValue;
  final Builder? builder;
  final ValueChangedCubit<Value>? cubit;
  final Widget? child;
  final bool closeAble;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ValueChangedCubit<Value>>(
      create: (context) =>
          cubit ??
          ValueChangedCubit<Value>(
            value: initialValue,
            closeAble: closeAble,
          ),
      child: child ?? builder,
    );
  }
}
