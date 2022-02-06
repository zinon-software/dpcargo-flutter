import 'package:flutter/material.dart';

import 'src/app.dart';
import 'src/views/settings/settings_controller.dart';
import 'src/views/settings/settings_service.dart';

void main() async {
  final settingsController = SettingsController(SettingsService());
  await settingsController.loadSettings();
  runApp(MyApp(settingsController: settingsController));
}


