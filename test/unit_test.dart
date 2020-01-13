import 'package:flutter_test/flutter_test.dart';
import 'package:segitiga/home_page.dart';

void main(){
  test("Alas segitiga return error string",() {
    var result = Alasvalidator.validate('');
    expect(result, equals('kolom alas tidak boleh kosong'));
  });

  test("Alas Segitiga tidak null",() {
    var result = Alasvalidator.validate('string');
    expect(result, equals(null));
  });
}