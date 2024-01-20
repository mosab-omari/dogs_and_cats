import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../../constants/colors/app_colors.dart';
import '../../utils/navigation.dart';

class GalleryPhotoViewWrapper extends StatefulWidget {
  GalleryPhotoViewWrapper({
    super.key,
    this.loadingBuilder,
    this.backgroundDecoration,
    this.minScale,
    this.maxScale,
    this.network = true,
    this.initialIndex = 0,
    required this.galleryItems,
    this.scrollDirection = Axis.horizontal,
  }) : pageController = PageController(initialPage: initialIndex);

  final LoadingBuilder? loadingBuilder;
  final BoxDecoration? backgroundDecoration;
  final dynamic minScale;
  final dynamic maxScale;
  final int initialIndex;
  final PageController pageController;
  final List<KeyValueModel> galleryItems;
  final Axis scrollDirection;
  final bool network;

  @override
  State<StatefulWidget> createState() {
    return _GalleryPhotoViewWrapperState();
  }
}

class _GalleryPhotoViewWrapperState extends State<GalleryPhotoViewWrapper> {
  late int currentIndex = widget.initialIndex;

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigation.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        // backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: widget.backgroundDecoration,
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height,
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            PhotoViewGallery.builder(
              scrollPhysics: const BouncingScrollPhysics(),
              builder: _buildItem,
              itemCount: widget.galleryItems.length,
              loadingBuilder: widget.loadingBuilder,
              backgroundDecoration: widget.backgroundDecoration,
              pageController: widget.pageController,
              onPageChanged: onPageChanged,
              scrollDirection: widget.scrollDirection,
            ),
          ],
        ),
      ),
    );
  }

  PhotoViewGalleryPageOptions _buildItem(BuildContext context, int index) {
    final KeyValueModel item = widget.galleryItems[index];
    return PhotoViewGalleryPageOptions(
      imageProvider: widget.network
          ? CachedNetworkImageProvider(item.value)
          : Image.file(File(item.value)).image,
      initialScale: PhotoViewComputedScale.contained,
      minScale: PhotoViewComputedScale.contained * (0.5 + index / 10),
      maxScale: PhotoViewComputedScale.covered * 4.1,
      heroAttributes: PhotoViewHeroAttributes(tag: item.value),
    );

    //Used with my custom video widget
    // isVideo(item.value)
    //     ? PhotoViewGalleryPageOptions.customChild(
    //         child: VideoWidget.network(url: item.value, initialSound: true),
    //         initialScale: PhotoViewComputedScale.contained,
    //         minScale: PhotoViewComputedScale.contained * (0.5 + index / 10),
    //         maxScale: PhotoViewComputedScale.covered * 4.1,
    //         heroAttributes: PhotoViewHeroAttributes(tag: item.value),
    //       )
    //     : ;
  }
}
