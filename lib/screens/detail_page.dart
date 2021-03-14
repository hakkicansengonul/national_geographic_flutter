import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://media.giphy.com/media/LPlmexh8SLjO9OwPxP/source.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 60.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                        Text(
                          " Invertebrates",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.search_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                color: Colors.white,
              ),
              Container(
                height: 45.0,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    childlist("ARTICLES"),
                    childlist("PHOTOS"),
                    childlist("VIDEOS"),
                    childlist("SERIES"),
                  ],
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              SizedBox(
                height: 250.0,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 60.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white.withOpacity(.7)),
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 200.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Text(
                      "Article",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "(5 min read)",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      " | ",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "14.03.21",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jellyfish",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0),
                    ),
                    Container(
                      height: 70.0,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          childlistfoto(
                              "https://cdn.pixabay.com/photo/2016/11/21/17/09/animals-1846546_1280.jpg"),
                          childlistfoto(
                              "https://cdn.pixabay.com/photo/2010/12/13/10/32/jellyfish-2883_1280.jpg"),
                          childlistfoto(
                              "https://cdn.pixabay.com/photo/2013/05/24/17/21/jellyfish-113384_1280.jpg"),
                          childlistfoto(
                              "https://cdn.pixabay.com/photo/2013/05/24/17/23/jellyfish-113386_1280.jpg"),
                          childlistfoto(
                              "https://cdn.pixabay.com/photo/2016/11/19/13/58/animal-1839389_1280.jpg"),
                        ],
                      ),
                    ),
                    Text(
                      "Jellyfish or medus, a sea creature that swims freely and lacks a brain, belonging to the classes Scyphozoa and Cubozoa."
                      " The French méduse is an excerpt from the word jellyfish. The French word Ancient Greek Medoúsa (μεδούσα) is an excerpt from the word snake-haired goddess in mythology. This word is derived from the Ancient Greek verb médέδω (μ fi), to look after, to show the way, to guardianship, to favor."
                      " Jellyfish can be defined as beings that have become flattened and adapted to swimming."
                      "The body shape is mostly in the shape of a shallow or domed umbrella. They are more complex than polyps. An umbrella has developed as a swimming body. Thanks to this organ, the animal moves forward.",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget childlist(String title) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
      width: 70.0,
      height: 30.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Center(
          child: Text(
        title,
        style: TextStyle(color: Colors.white),
      )),
    ),
  );
}

Widget childlistfoto(String imgUrl) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
      width: 50.0,
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(image: NetworkImage(imgUrl), fit: BoxFit.fill),
      ),
    ),
  );
}
