import 'package:flutter/material.dart';

List dataPage = [
  containerdata("https://media.giphy.com/media/LPlmexh8SLjO9OwPxP/source.gif",
      "Invertebrates", 8681),
  containerdata("https://media.giphy.com/media/l1TJVLJM0hfnGJjE4t/source.gif",
      "Birds", 3456),
  containerdata("https://media.giphy.com/media/26gs8YOrwxyd1cWBi/source.gif",
      "Reptiles", 1934),
  containerdata("https://media.giphy.com/media/KpqjSFWDz52wg/source.gif",
      "Predators", 10432),
];

class containerdata extends StatelessWidget {
  final String imgurl;
  final String title;
  final int spectator;

  const containerdata(this.imgurl, this.title, this.spectator);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0, left: 8.0),
      child: Container(
        width: 150.0,
        height: 150.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image:
              DecorationImage(image: NetworkImage(imgurl), fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.play_circle_outline_outlined,
                    color: Colors.white,
                  ),
                  Container(
                    height: 20.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20.0,
                      ),
                      color: Colors.white.withOpacity(.5),
                    ),
                    child: Center(child: Text("$spectator")),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 120.0),
              child: Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
