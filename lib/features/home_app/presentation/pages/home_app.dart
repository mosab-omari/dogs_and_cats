import 'package:algooru_flutter_assessment/core/widgets/tabs/custom_page_view.dart';
import 'package:algooru_flutter_assessment/core/widgets/tabs/custom_tab_bar.dart';
import 'package:algooru_flutter_assessment/features/home_app/presentation/pages/cats_page.dart';
import 'package:algooru_flutter_assessment/features/home_app/presentation/pages/dogs_page.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/colors/app_colors.dart';

@RoutePage()
class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlGooru Assessment'),
      ),
      body: CustomPageView(
        padding: EdgeInsets.only(top: 20.0),
        tabBar: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: AppColors.grey2,
            borderRadius: BorderRadius.circular(9),
          ),
          child: CustomTabBar(
            splashColor: AppColors.grey2,
            indicator: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withOpacity(0.04),
                  blurStyle: BlurStyle.inner,
                  blurRadius: 1,
                  offset: const Offset(0, 3),
                ),
                BoxShadow(
                  color: AppColors.black.withOpacity(0.04),
                  blurStyle: BlurStyle.inner,
                  blurRadius: 8,
                  offset: const Offset(0, 3),
                )
              ],
              color: AppColors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            tabs: ['Dogs', 'Cats'],
          ),
        ),
        pages: [
          DogsPage(),
          CatsPage(),
        ],
        initialActiveIndex: 0,
        pageViewBuilder: (pageView) => Expanded(child: pageView),
      ),
    );
  }
}