import 'dart:ui' as ui;

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:http_parser/http_parser.dart';

import '../constants/supported_media_types.dart';

class CustomFile {
  String name;
  double? size;
  String extension;

  CustomFile({
    required this.name,
    this.size,
  }) : extension = getExtension(name);
}

String getExtension(String filePath) {
  return filePath.split('.').last;
}

bool isVideo(String filePath) {
  return videoTypes.contains(getExtension(filePath));
}

bool isImage(String filePath) {
  return imageTypes.contains(getExtension(filePath));
}

bool isFile(String filePath) {
  return fileTypes.contains(getExtension(filePath));
}

class Utils {
  Utils._();

  static String limitText({
    int startIndex = 0,
    required int length,
    required String value,
  }) {
    return value.length > length ? value.substring(startIndex, length) : value;
  }

  static Future<Uint8List> getBytesFromAsset(String path, int width,
      {int? height}) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetHeight: height, targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  static MultipartFile toMultiPartFile(String path) {
    return MultipartFile.fromFileSync(
      path,
      filename: path,
      contentType: MediaType(
          isVideo(path)
              ? "video"
              : isImage(path)
                  ? "image"
                  : "file",
          getExtension(path)),
    );
  }
}
