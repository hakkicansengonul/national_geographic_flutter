import 'package:flutter/material.dart';
import 'package:national_geographic_flutter/data_data/dataPage.dart';
import 'package:national_geographic_flutter/screens/detail_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://media.giphy.com/media/nP7C2Eo99KH9C/source.gif"),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu_outlined,
                    color: Colors.white,
                  ),
                  Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://flaticons.net/icon.php?slug_category=brand-identity&slug_icon=national-geographic-channel&icon_size=256&icon_color=FBD85B&icon_flip=&icon_rotate=0",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.search_outlined,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Center(
                child: Text(
              "Animals",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0),
            )),
            SizedBox(
              height: 350.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 60.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white.withOpacity(.5)),
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 200.0,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dataPage.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => DetailPage()));
                    },
                    child: Container(
                      width: 200.0,
                      height: 200.0,
                      child: dataPage[index],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
