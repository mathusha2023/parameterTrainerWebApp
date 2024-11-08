import 'package:flutter/material.dart';
import 'package:flutter_telegram_web_app/flutter_telegram_web_app.dart' as tg;
import 'package:parameter_trainer/ui/pages/tasks_list_page.dart';
import 'package:parameter_trainer/ui/themes/themes.dart';

class App extends StatelessWidget {
  const App({super.key});

  static final ValueNotifier<ThemeMode> _notifier =
      ValueNotifier(tg.isDarkMode ? ThemeMode.dark : ThemeMode.light);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: _notifier,
      builder: (_, mode, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: DarkTheme().themeData,
          darkTheme: LightTheme().themeData,
          themeMode: mode,
          home: const TasksListPage(),
        );
      },
    );
  }
}
