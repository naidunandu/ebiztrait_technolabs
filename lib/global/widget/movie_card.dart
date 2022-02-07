import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final dynamic currentMovie;
  final Function onTap;
  const MovieCard({Key? key, this.currentMovie, required this.onTap}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    String genres = getGenres(currentMovie['genres']);
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          child: Row(
            children: [
              Image.network(currentMovie['thumbnail'],width: 85, height: 110, fit: BoxFit.fill,),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(currentMovie['name'],
                              style: const TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.w700)),
                          const SizedBox(width: 5),
                          Text("(${currentMovie['year']})",
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey)),
                        ],
                      ),
                      Text(
                        genres,
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "Astronaut Roy McBride undertakes a mission across an unforgiving solar system to uncover the truth about his missing father and his doomed expedition that now, 30 years later, threatens the universe.",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
