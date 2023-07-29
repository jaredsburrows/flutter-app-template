import 'package:flutter/foundation.dart';
import 'package:flutter_app_template/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  // https://github.com/flutter/flutter/issues/116936
  app.isTesting = true;

  group('Flutter Example', () {
    // First, define the Finders and use them to locate widgets from the
    // test suite. Note: the Keys provided to the `byKey` method must
    // be the same as the Keys we used in the app.
    final buttonFinder = find.byKey(const Key('increment'));

    testWidgets('starts at 0', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Use the `tester.widget` method to verify the counter starts at 0.
      expect(find.text('0'), findsOneWidget);
    });

    testWidgets('increments the counter', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // First, tap the button.
      await tester.tap(buttonFinder);
      await tester.pumpAndSettle();

      // Then, verify the counter text is incremented by 1.
      expect(find.text('1'), findsOneWidget);
    });

    testWidgets('increments the counter during animation',
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // First, tap the button.
      await tester.tap(buttonFinder);
      await tester.pump(); // Trigger the animation

      // Then, verify the counter text is incremented by 1.
      expect(find.text('1'), findsOneWidget);
    });
  });
}
