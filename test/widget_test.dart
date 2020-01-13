// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:segitiga/home_page.dart';
import 'package:segitiga/main.dart';

void main() {
  testWidgets('insert Textfield Alas', (WidgetTester tester) async {
    await tester.pumpWidget(Luassegitiga());
    var textfield = find.byKey(Key('Alas'));
    expect(textfield, findsOneWidget);
    await tester.enterText(textfield, '4');
    expect(find.text('4'), findsOneWidget);

  });

  testWidgets('insert Texfield Tinggi', (WidgetTester tester) async {
    await tester.pumpWidget(Luassegitiga());
    var textfield = find.byKey(Key('Tinggi'));
    expect(textfield, findsOneWidget);
    await tester.enterText(textfield, '8');
    expect(find.text('8'), findsOneWidget);
  });

  testWidgets('insert Texfield Sisimiring', (WidgetTester tester) async{
    await tester.pumpWidget(Luassegitiga());
    var textfield = find.byKey(Key('Smiring'));
    expect(textfield, findsOneWidget);
    await tester.enterText(textfield, '8');
    expect(find.text('8'), findsOneWidget);
  });
}
