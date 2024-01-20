import 'package:algooru_flutter_assessment/core/widgets/tabs/custom_page_view.dart';
import 'package:algooru_flutter_assessment/core/widgets/tabs/custom_tab_bar.dart';
import 'package:algooru_flutter_assessment/features/animals_details/presentation/pages/cats_page.dart';
import 'package:algooru_flutter_assessment/features/animals_details/presentation/pages/dogs_page.dart';
import 'package:algooru_flutter_assessment/gen/assets.gen.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/colors/app_colors.dart';

@RoutePage()
class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: AppColors.black.withOpacity(1),
                    blurStyle: BlurStyle.inner)
              ],
              image: DecorationImage(
                  opacity: 0.7,
                  fit: BoxFit.cover,
                  image: Assets.images.general.homeAppbar
                      .image(fit: BoxFit.cover)
                      .image),
            ),
            child: AppBar(
              backgroundColor: Colors.transparent,
              title: const Text('Cats & Dogs'),
            ),
          ),
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
              tabs: const ['Dogs', 'Cats'],
            ),
          ),
          pages: const [
            DogsPage(),
            CatsPage(),
          ],
          initialActiveIndex: 0,
          pageViewBuilder: (pageView) => Expanded(child: pageView),
        ),
      ),
    );
  }
}
