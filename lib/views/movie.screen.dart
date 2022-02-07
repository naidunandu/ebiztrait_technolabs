import 'package:ebiztrait_technolabs/controller/movie_controller.dart';
import 'package:ebiztrait_technolabs/global/routes/route.names.dart';
import 'package:ebiztrait_technolabs/global/widget/movie_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  _MovieScreenState createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  MovieController controller = Get.put(MovieController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MovieController>(
      builder: (_)=> Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            automaticallyImplyLeading: false,
            title: const Text("MOVIES"),
          ),
          body: ListView.builder(
            itemCount: controller.movies.length,
            padding: const EdgeInsets.all(10),
            itemBuilder: (BuildContext context, int index){
              return MovieCard(currentMovie: controller.movies[index], onTap: (){
                Get.toNamed(RouteName().movieDetail,arguments: controller.movies[index]["id"]);
              },);
            },
          )
      ),
    );
  }
}
