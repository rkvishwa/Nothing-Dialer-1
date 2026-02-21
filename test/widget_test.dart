

import 'package:flutter_test/flutter_test.dart';

import 'package:nothing_dialer/main.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const NothingDialerApp());
  });
}
