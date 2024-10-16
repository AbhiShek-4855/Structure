import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:strucuture_utils/utils/app_routes.dart';
import 'package:strucuture_utils/utils/shared_pref.dart';

import 'theme/app_colors.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await preferences.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        getPages: Routes.pages,
        theme: ThemeData(
          textSelectionTheme: TextSelectionThemeData(selectionHandleColor: app_text_white_ffffff),
        ),

        debugShowCheckedModeBanner: false,
        title: 'Bookclublm',

        // home:   (preferences.getBool(SharedPreference.IS_LOGGED_IN) ?? false)
        // // ? HomeScreen()
        //     ? BottomBarScreen()
        //     : LoginScreen()
    );
  }
}


