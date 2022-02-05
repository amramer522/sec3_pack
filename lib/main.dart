import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:sec3_pack/screens/view.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await translator.init(
    localeType: LocalizationDefaultType.device,
    languagesList: ['ar', 'en'],
    assetsDirectory: 'assets/langs/',
  );
  runApp(LocalizedApp(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: translator.delegates,
      // Android + iOS Delegates
      locale: translator.activeLocale,
      // Active locale
      supportedLocales: translator.locals(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenUtilInit(builder: () => HomeScreen()),
    );
  }
}
