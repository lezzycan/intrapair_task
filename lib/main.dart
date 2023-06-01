import 'package:flutter/material.dart';
import 'package:intrapair_task/app/app.bottomsheets.dart';
import 'package:intrapair_task/app/app.dialogs.dart';
import 'package:intrapair_task/app/app.locator.dart';
import 'package:intrapair_task/app/app.router.dart';
import 'package:intrapair_task/ui/common/app_colors.dart';
import 'package:intrapair_task/ui/theme/app_theme.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  setupLocator();
  setupDialogUi();
  setupBottomSheetUi();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Intrapair Task',
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
