import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend_app/main.dart';

void main() {
  testWidgets('App home screen displays Notes title', (WidgetTester tester) async {
    await tester.pumpWidget(const NotesApp());
    expect(find.text('Notes'), findsOneWidget);
  });

  testWidgets('FAB for adding note present', (WidgetTester tester) async {
    await tester.pumpWidget(const NotesApp());
    expect(find.byIcon(Icons.add), findsOneWidget);
  });
}
