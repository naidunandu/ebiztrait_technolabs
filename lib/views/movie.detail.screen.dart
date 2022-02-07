import 'package:ebiztrait_technolabs/controller/movie_controller.dart';
import 'package:ebiztrait_technolabs/controller/movie_detail_controller.dart';
import 'package:ebiztrait_technolabs/global/widget/movie_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MovieDetailScreen extends StatefulWidget {
  const MovieDetailScreen({Key? key}) : super(key: key);

  @override
  _MovieDetailScreenState createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  MovieDetailController controller = Get.put(MovieDetailController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MovieDetailController>(
      builder: (_) => Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            automaticallyImplyLeading: true,
            title: const Text("MOVIES DETAIL"),
          ),
          body: controller.moviesDetail != null ? ListView(
            children: [
              Stack(
                children: [
                  Image.network(controller.imageUrl,
                    height: (MediaQuery.of(context).size.height / 1.6),
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                  ),
                  Container(
                    decoration:
                        BoxDecoration(color: Colors.black.withOpacity(0.5)),
                    height: (MediaQuery.of(context).size.height / 1.6),
                    width: MediaQuery.of(context).size.width,
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text(controller.moviesDetail["name"],
                              style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white)),
                          const SizedBox(
                            height: 5,
                          ),
                          Text("(${controller.moviesDetail["year"]})",
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white)),
                          const SizedBox(
                            height: 5,
                          ),
                           Text(controller.genres,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Text("Director",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                    Text(
                      controller.moviesDetail["director"] ?? "-",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Main Cast :",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      controller.moviesDetail["main_star"]
                      ?? "-",
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Description :",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                        controller.moviesDetail["description"] ?? "-",
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              )
            ],
          ):const Center(child: Text("NO DATA FOUND"),)),
    );
  }
}
