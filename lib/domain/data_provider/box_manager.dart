import 'package:hive_flutter/hive_flutter.dart';

class BoxManager {
  static final BoxManager instance = BoxManager._();

  BoxManager._();

  Future<Box<List<String>>> openAppBox() async {
    return Hive.openBox<List<String>>('completed_wishes_box');
  }

    //String getTaskBoxName(int gameKey) => 'wish_names_box_$gameKey';
}