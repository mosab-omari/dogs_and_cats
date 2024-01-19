
import '../constants/enums/media_type.dart';
import 'utils.dart';

extension TitleCase on String {
  String toTitleCase() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

extension Media on String {
  MediaType getMediaType() {
    if (isVideo(this)) return MediaType.video;
    if (isImage(this)) return MediaType.image;
    if (isFile(this)) return MediaType.file;
    return MediaType.unknown;
  }
}

extension equalDate on DateTime {
  bool isSameDay(DateTime dateTime) {
    return (dateTime.year == year &&
        dateTime.month == month &&
        dateTime.day == day);
  }
}

extension TimeToHM on String {
  String toHM() {
    return '${split(':')[0]}:${split(':')[1]}';
  }
}

extension TimeTo12HM on String {
  String to12HM() {
    num first = num.parse(split(':')[0]);
    String second = split(':')[1];
    String AmPm;
    String firstString;
    if (first - 12 > 0) {
      String extra = '';
      AmPm = 'PM';
      if ((first - 12) < 10) {
        extra = '0';
      }
      firstString = '$extra${first - 12}';
    } else {
      AmPm = 'AM';
      String extra = '';
      if (first < 10) {
        extra = '0';
      }
      firstString = '$extra$first';
    }
    return '$firstString:$second $AmPm';
  }
}

extension DurationToHM on num {
  String toHM() {
    return '${(this ~/ 60).toString()} hr ${(this % 60).toString()} mins';
  }
}
