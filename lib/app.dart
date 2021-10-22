import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/core/theme/default_theme.dart';
import 'app/core/theme/themes.dart';
import 'app/routes/app_pages.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Themes themes = Themes();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Book & Quill",
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      theme: themes.defaultTheme,
    );
  }
}
