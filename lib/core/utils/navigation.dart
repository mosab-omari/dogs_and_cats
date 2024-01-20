import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../widgets/multi_media/gallery_view.dart';

class KeyValueModel {
  dynamic key;
  dynamic value;

  KeyValueModel({required this.key, required this.value});
}

class Navigation {
  static Future popThenPush(BuildContext context, Widget page) async {
    Navigation.pop(context);
    return await Navigation.push(context, page);
  }

  static Future push(BuildContext context, Widget page) async {
    return await Navigator.of(context).push(
      platformPageRoute(
        context: context,
        builder: (context) => page,
      ),
    );
  }

  static viewImages(
      {required BuildContext context,
      required List<KeyValueModel> items,
      bool network = true,
      int initialIndex = 0}) {
    if (items[initialIndex].key != null && items[initialIndex].value != null) {
      Navigation.push(
        context,
        GalleryPhotoViewWrapper(
          network: network,
          initialIndex: initialIndex,
          galleryItems: items,
        ),
      );
    }
  }

  static bool canPop(BuildContext context, {dynamic value}) {
    return Navigator.canPop(context);
  }

  static pop(BuildContext context, {dynamic value}) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context, value);
    }
  }

  static popAll(BuildContext context, {dynamic value}) {
    while (Navigator.canPop(context)) {
      Navigator.pop(context, value);
    }
  }

  static pushReplacement(BuildContext context, Widget page) {
    Navigator.pushReplacement(
      context,
      platformPageRoute(
        context: context,
        builder: (context) => page,
      ),
    );
  }

  static popUntil(BuildContext context, int maxPopCount) {
    int count = 0;
    Navigator.popUntil(context, (route) {
      return count++ == maxPopCount;
    });
  }

  static pushAndRemoveUntil(BuildContext context, Widget page) async {
    return await Navigator.of(context).pushAndRemoveUntil(
        platformPageRoute(
          context: context,
          builder: (context) => page,
        ),
        (Route<dynamic> route) => false);
  }
}
