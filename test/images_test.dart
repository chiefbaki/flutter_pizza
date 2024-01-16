import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:eat_fun_app/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.ellipse2).existsSync(), isTrue);
    expect(File(Images.bgBurger).existsSync(), isTrue);
    expect(File(Images.burger).existsSync(), isTrue);
    expect(File(Images.facebook1).existsSync(), isTrue);
    expect(File(Images.menuBurger1).existsSync(), isTrue);
    expect(File(Images.menuBurger2).existsSync(), isTrue);
    expect(File(Images.pan).existsSync(), isTrue);
    expect(File(Images.pizza).existsSync(), isTrue);
    expect(File(Images.search1).existsSync(), isTrue);
    expect(File(Images.splashScreenImg).existsSync(), isTrue);
  });
}
