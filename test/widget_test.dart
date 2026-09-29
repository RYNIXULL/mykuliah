import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mykuliah/main.dart';

void main() {
  testWidgets('MyApp renders without errors', (WidgetTester tester) async {
    await initializeDateFormatting('id_ID', null);
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());
    expect(find.text('Hari ini'), findsOneWidget);
  });
}
