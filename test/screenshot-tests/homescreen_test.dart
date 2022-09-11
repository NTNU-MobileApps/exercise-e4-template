import 'package:exercise_e4/app.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

/// Generate a "screenshot" of the main page, compare it with a given reference
/// "golden image". The test passes if the screen is the same as in the
/// "golden image"
void main() {
  testGoldens('Compare with golden image', (tester) async {
    final builder = DeviceBuilder();
    builder.overrideDevicesForAllScenarios(devices: [Device.phone]);
    builder.addScenario(widget: const E4App(), name: 'default page');
    await tester.pumpDeviceBuilder(builder);
    await screenMatchesGolden(tester, 'demo_page');
  });
}
