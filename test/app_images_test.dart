import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:achievements/resources/resources.dart';

void main() {
  test('app_images assets test', () {
    expect(File(AppImages.sims4LogoPrimaryWhiteRgbTransparent).existsSync(),
        isTrue);
    expect(File(AppImages.theSims3Logo).existsSync(), isTrue);
  });
}
