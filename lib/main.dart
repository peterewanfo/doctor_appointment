import 'package:doctor_appointment/provider/__providers.dart';
import 'package:doctor_appointment/routes/route_generator.dart';
import 'package:doctor_appointment/style/app_theme.dart';
import 'package:doctor_appointment/ui/appointments_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

void main() {
  LicenseRegistry.addLicense(() async*{
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(ProviderScope(child: Page()));
}

class Page extends HookWidget {
  @override
  Widget build(BuildContext context) {

    final lightModeEnabled = useProvider(appThemeStateNotifier.state);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chop Now Now",
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: lightModeEnabled ? ThemeMode.light : ThemeMode.dark,
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      );
  }
  
}
