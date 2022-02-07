import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ebiztrait_technolabs/global/constants.dart';
import 'package:ebiztrait_technolabs/global/routes/route.methods.dart';
import 'package:ebiztrait_technolabs/global/theme/app_color.dart';
import 'package:ebiztrait_technolabs/views/splash.screen.dart';

AppRoute _appRoute = AppRoute();

void main() async{
  await GetStorage.init();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.APP_NAME,
      home: SplashScreen(),
      getPages: _appRoute.getPages,
      theme: AppThemes.appTheme,
    );
  }
}
