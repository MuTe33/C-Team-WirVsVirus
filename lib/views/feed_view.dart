import 'package:flutter/material.dart';

class FeedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "staatus",
            style: TextStyle(color: Colors.black, fontSize: 26),
          ),
          backgroundColor: Colors.white),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: Color(0xFF014B76),
            width: MediaQuery.of(context).size.width,
            height: 110,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 36),
              child: Text("Corona Insights",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          ),
          SizedBox(height: 20),
          Flexible(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, bottom: 10),
                  child: Text("Täglicher Podcast",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16.0, bottom: 8),
                                    child: Text(
                                      "Wissen to go!",
                                      style: TextStyle(
                                          color: Color(0xFF99DDC5),
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Text(
                                      '''Die tägliche Zusammenfassung
in nur 2 Minuten''',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 16),
                              Icon(
                                IconData(0xe808, fontFamily: "Podcast"),
                                color: Colors.white,
                                size: 100,
                              )
                            ],
                          )
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10),
                  child: Row(
                    children: [
                      Icon(
                        IconData(0xe807, fontFamily: "PlayButton"),
                        size: 35,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "22.03.2020: Kurz erklärt",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Stefani Gregor")
                        ],
                      ),
                      SizedBox(width: 124),
                      Text(
                        "2:01",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("Unser Expertentalk",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Container(
                    child: Image(
                      image: AssetImage("assets/pictures/dr_podcast.jpg"),
                      fit: BoxFit.cover,
                    ),
                    height: 170,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 10),
                  child: Row(
                    children: [
                      Icon(
                        IconData(0xe807, fontFamily: "PlayButton"),
                        size: 35,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "#001: Interview mit Dr. Bürkle",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Onkologe & Allgemeinmediziner")
                        ],
                      ),
                      SizedBox(width: 88),
                      Text(
                        "8:20",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("Infos einfach erklärt",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Container(
                    child: Image(
                      image: AssetImage("assets/pictures/quarks.jpg"),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.black,
                    height: 350,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22.0, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bitte haltet Abstand zueinander.",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("Quelle: Quarks")
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
