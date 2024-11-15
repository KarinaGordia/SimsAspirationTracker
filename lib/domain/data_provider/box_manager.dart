import 'package:hive_flutter/hive_flutter.dart';

class BoxManager {
  static final BoxManager instance = BoxManager._();

  BoxManager._();

  Future<Box<List<String>>> openAppBox() async {
    return await Hive.openBox<List<String>>('completed_wishes_box');
  }

  Future<void> closeBox(Box box) async {
    await box.close();
  }
}