import 'dart:async';

import 'package:ebiztrait_technolabs/global/networking/api.manager.dart';
import 'package:ebiztrait_technolabs/global/utilities/app.helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MovieController extends GetxController {

  List movies = [];

  movieApi() async {
      var request = [];
      Apis().getApi("movies", request).then((results) {
        movies = results.data['movies'];
        update();
      }).catchError((onError){
        AppHelper().errorMessage(onError.toString());
      });
  }

  @override
  void onInit() {
    // TODO: implement onInit
    movieApi();
    super.onInit();
  }

}
