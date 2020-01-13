

import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Counter App', () {

    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });
    var textfield = find.byValueKey('Alas');
    var textfield2 = find.byValueKey('Tinggi');
    var lbutton = find.byValueKey('LSegitiga');
    var cbutton = find.byValueKey('clear');
    var luas = find.text("16");

    test('Click Luas Button', () async {
      
       await driver.tap(textfield);
       await Future.delayed(Duration(seconds: 2));
       await driver.enterText('8');
       await Future.delayed(Duration(seconds: 2));
       await driver.tap(textfield2);
       await Future.delayed(Duration(seconds: 2));
       await driver.enterText('4');
       await driver.waitForAbsent(luas);
       await driver.tap(lbutton);
       await Future.delayed(Duration(seconds: 2));
       await driver.tap(cbutton);
    });
  });
}
