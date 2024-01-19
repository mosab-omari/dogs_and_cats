class CurrentTabBar {
  int index;
  TabBarChangeCause tabBarChangeCause;

  CurrentTabBar({required this.index, required this.tabBarChangeCause});
}

enum TabBarChangeCause {
  none,
  pageView,
  tabBar,
  pageViewController,
}
