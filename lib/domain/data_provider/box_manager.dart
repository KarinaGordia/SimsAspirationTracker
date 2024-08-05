import 'package:hive_flutter/hive_flutter.dart';

class BoxManager {
  static final BoxManager instance = BoxManager._();

  BoxManager._();

  Future<Box<String>> openWishBox(int gameKey) async {
    return Hive.openBox<String>(getTaskBoxName(gameKey));
  }

    String getTaskBoxName(int gameKey) => 'wish_names_box_$gameKey';
}