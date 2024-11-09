import 'package:flutter/material.dart';
import 'package:flutter_telegram_web_app/flutter_telegram_web_app.dart' as tg;
import 'package:parameter_trainer/ui/app.dart';

void main() async {
  if (!tg.isSupported) {
    throw Exception("Telegram instance does not supported!");
  }
  runApp(const App());
}
