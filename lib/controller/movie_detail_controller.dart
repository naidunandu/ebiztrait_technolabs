import 'dart:async';

import 'package:ebiztrait_technolabs/global/networking/api.manager.dart';
import 'package:ebiztrait_technolabs/global/utilities/app.helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MovieDetailController extends GetxController {
  var moviesDetail;
  String genres = "";
  String imageUrl = "";

  getGenres(genres) {
    String myStr = "";
    for (int i = 0; i < genres.length; i++) {
      myStr += "${genres[i]} ,";
    }

    if(myStr.isNotEmpty){
      myStr = myStr.substring(0, myStr.length-1);
    }

    return myStr;
  }

  movieApi(id) async {
    var request = [];
    Apis().getApi("movies/$id", request).then((results) {
      print(results.data["movie"]);
      moviesDetail = results.data['movie'];
      genres = getGenres(results.data['movie']['genres']);
      if(results.data['movie']['thumbnail']!=null){
        dynamic link = results.data['movie']['thumbnail'].split("thumbnails");
        imageUrl = link[0]+ 'thumbnails' +link[1].replaceAll('thumb','medium');
      }
      update();
    }).catchError((onError){
      AppHelper().errorMessage(onError.toString());
    });
  }

  @override
  void onInit() {
    // TODO: implement onInit
    var id = Get.arguments;
    movieApi(id);
    super.onInit();
  }

}
