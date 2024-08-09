import 'package:hive_flutter/hive_flutter.dart';

class BoxManager {
  static final BoxManager instance = BoxManager._();

  BoxManager._();

  Future<Box<List<String>>> openAppBox() async {
    print('is box open in BoxManager openAppBox: ${Hive.isBoxOpen('completed_wishes_box')}');
    return await Hive.openBox<List<String>>('completed_wishes_box');
  }

  Future<void> closeBox(Box box) async {
    print('is box open in BoxManager closeBox: ${Hive.isBoxOpen('completed_wishes_box')}');
    await box.close();
    print('is box open in BoxManager closeBox: ${Hive.isBoxOpen('completed_wishes_box')}');
  }
}