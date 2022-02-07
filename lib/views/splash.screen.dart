import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ebiztrait_technolabs/controller/splash_controller.dart';
import 'package:ebiztrait_technolabs/global/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashController controller = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          Constants.APP_NAME,
          style: TextStyle(fontSize: 22,color: Color(Constants.PRIMARY)),
        ),
      ),
    );
  }
}
