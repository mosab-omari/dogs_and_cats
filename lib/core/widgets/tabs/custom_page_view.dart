import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'current_tab_bar.dart';
import 'keep_alive_page.dart';
import 'value_changed_model/cubits/value_changed_cubit.dart';
import 'value_changed_model/providers/value_changed_provider.dart';
import 'value_changed_model/widgets/value_changed_model.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({
    super.key,
    required this.tabBar,
    required this.pages,
    required this.initialActiveIndex,
    this.inBetweenWidgets,
    required this.pageViewBuilder,
    this.onIndexChanged, this.padding,
  });

  final List<Widget> pages;
  final EdgeInsets? padding;
  final int initialActiveIndex;
  final Widget? inBetweenWidgets;
  final Widget Function(PageView pageView) pageViewBuilder;
  final Widget tabBar;
  final Function(int index)? onIndexChanged;

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView>
    with SingleTickerProviderStateMixin {
  late final List<Widget> tabs;
  late int activeIndex;

  @override
  void initState() {
    super.initState();
    activeIndex = widget.initialActiveIndex;
    pageController = PageController(initialPage: widget.initialActiveIndex);
  }

  late final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ValueChangedProvider(
      initialValue: CurrentTabBar(
        index: widget.initialActiveIndex,
        tabBarChangeCause: TabBarChangeCause.none,
      ),
      builder: Builder(builder: (context) {
        return ValueChangedModel<CurrentTabBar>(
          onValueChanged: (val) {
            if (widget.onIndexChanged != null) {
              widget.onIndexChanged!(val.index);
            }
            if (val.tabBarChangeCause == TabBarChangeCause.tabBar) {
              pageController.animateToPage(val.index,
                  duration: const Duration(
                    milliseconds: 250,
                  ),
                  curve: Curves.easeInOut);
              activeIndex = val.index;
              context.read<ValueChangedCubit<CurrentTabBar>>().changeValue(
                  CurrentTabBar(
                      index: val.index,
                      tabBarChangeCause: TabBarChangeCause.pageViewController));
            }
          },
          builder: (val) => Container(
            padding: widget.padding,
            child: Column(
              children: [
                widget.tabBar,
                if (widget.inBetweenWidgets != null) widget.inBetweenWidgets!,
                widget.pageViewBuilder(
                  PageView(
                    onPageChanged: (value) {
                      if (val.tabBarChangeCause !=
                              TabBarChangeCause.pageViewController ||
                          activeIndex == value) {
                        final cubit =
                            context.read<ValueChangedCubit<CurrentTabBar>>();
                        cubit.changeValue(CurrentTabBar(
                          index: value,
                          tabBarChangeCause: TabBarChangeCause.pageView,
                        ));
                      }
                    },
                    controller: pageController,
                    children:
                        widget.pages.map((e) => KeepAlivePage(child: e)).toList(),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
