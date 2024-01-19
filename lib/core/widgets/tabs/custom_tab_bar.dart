import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'current_tab_bar.dart';
import 'gradient_tab.dart';
import 'value_changed_model/cubits/value_changed_cubit.dart';
import 'value_changed_model/widgets/value_changed_model.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar(
      {super.key,
      required this.tabs,
      this.onCubitCreated,
      this.onTap,
      this.dragStartBehavior = DragStartBehavior.start,
      this.initialIndex = 0,
      this.isScrollable = false,
      this.splashRadius,
      this.splashColor,
      this.indicator,
      this.fromPageView = true});

  final List<String> tabs;
  final void Function(int index)? onTap;
  final Decoration? indicator;
  final bool isScrollable;
  final DragStartBehavior dragStartBehavior;
  final double? splashRadius;
  final Color? splashColor;
  final int initialIndex;
  final bool fromPageView;
  final Function(ValueChangedCubit<CurrentTabBar>)? onCubitCreated;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    cubit = widget.fromPageView
        ? context.read<ValueChangedCubit<CurrentTabBar>>()
        : ValueChangedCubit(
            value: CurrentTabBar(
                index: widget.initialIndex,
                tabBarChangeCause: TabBarChangeCause.tabBar),
          );
    tabController = TabController(
      length: widget.tabs.length,
      vsync: this,
      initialIndex: widget.initialIndex,
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  late final ValueChangedCubit<CurrentTabBar> cubit;
  late final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return ValueChangedModel<CurrentTabBar>(
      cubit: cubit,
      // onCubitCreated: (cubit) {
      //   if (widget.onCubitCreated != null) widget.onCubitCreated!(cubit);
      // },
      onValueChanged: (val) {
        if (val.tabBarChangeCause != TabBarChangeCause.tabBar) {
          tabController.animateTo(val.index);
        }
      },
      builder: (val) => TabBar(
        splashFactory: NoSplash.splashFactory,
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          // Use the default focused overlay color
          return states.contains(MaterialState.focused)
              ? null
              : Colors.transparent;
        }),
        splashBorderRadius: widget.splashRadius == null
            ? null
            : BorderRadius.circular(widget.splashRadius!),
        dragStartBehavior: widget.dragStartBehavior,
        isScrollable: widget.isScrollable,
        controller: tabController,
        onTap: (index) {
          cubit.changeValue(
            CurrentTabBar(
                index: index, tabBarChangeCause: TabBarChangeCause.tabBar),
          );
          if (widget.onTap != null) widget.onTap!(index);
        },
        labelPadding: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        indicatorPadding: EdgeInsets.zero,
        indicator: widget.indicator,
        tabs: widget.tabs
            .asMap()
            .map((index, value) => MapEntry(
                index,
                GradientTab(
                  active: val.index == index,
                  title: value,
                )))
            .values
            .toList(),
        indicatorSize: TabBarIndicatorSize.tab,
      ),
    );
  }
}
