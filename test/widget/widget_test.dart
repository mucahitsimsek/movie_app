import 'package:flutter_test/flutter_test.dart';
import 'package:interview/feature/movies/view/movies_view.dart';
import 'package:interview/product/init/app_initialize.dart';
import 'package:interview/product/init/state_initialize.dart';

void main() {
  setUp(() async => AppInitialize().make());

  testWidgets('Widget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const StateInitialize(child: MoviesView()));

    // Verify that the Text widget is displayed.
    expect(find.text('Hello, World!'), findsOneWidget);
  });
}
