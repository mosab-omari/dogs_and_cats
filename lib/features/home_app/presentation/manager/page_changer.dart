import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'page_changer.g.dart';

@riverpod
class PageChanger extends _$PageChanger{
  @override
  int build() => 0;

  void changePage(int index) {
    state = index;
  }
}
