import 'package:flutter/material.dart';
import 'package:wirvsvirus/views/regional_details_view.dart';

class RegionalView extends StatelessWidget {
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
              child: Text("Woher kommst du?",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Flexible(
            child: ListView(
              children: ListTile.divideTiles(
                context: context,
                tiles: [
                  Card(
                    color: Color(0xFFEBEBEB),
                    child: ListTile(
                      title: Text(
                        "Baden-Württemberg",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      trailing: Image(
                          image: AssetImage(
                              "assets/pictures/Baden-Württemberg.png")),
                    ),
                  ),
                  Card(
                    color: Color(0xFFEBEBEB),
                    child: ListTile(
                      title: Text(
                        "Bayern",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      trailing: Image(
                          image: AssetImage("assets/pictures/Bayerm.png")),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegionalDetailsView()),
                        );
                      },
                    ),
                  ),
                  Card(
                    color: Color(0xFFEBEBEB),
                    child: ListTile(
                      title: Text(
                        "Berlin",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      trailing: Image(
                          image: AssetImage("assets/pictures/Berlin.svg.png")),
                    ),
                  ),
                  Card(
                    color: Color(0xFFEBEBEB),
                    child: ListTile(
                      title: Text(
                        "Brandenburg",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      trailing: Image(
                          image: AssetImage(
                              "assets/pictures/Brandenburg_Wappen.svg.png")),
                    ),
                  ),
                  Card(
                    color: Color(0xFFEBEBEB),
                    child: ListTile(
                      title: Text(
                        "Bremen",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      trailing: Image(
                          image: AssetImage(
                              "assets/pictures/Bremen_Wappen.svg.png")),
                    ),
                  ),
                  Card(
                    color: Color(0xFFEBEBEB),
                    child: ListTile(
                      title: Text(
                        "Hamburg",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      trailing: Image(
                          image: AssetImage("assets/pictures/Hamburg.svg.png")),
                    ),
                  ),
                  Card(
                    color: Color(0xFFEBEBEB),
                    child: ListTile(
                      title: Text(
                        "Hessen",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      trailing: Image(
                          image: AssetImage("assets/pictures/Hesse.svg.png")),
                    ),
                  ),
                  Card(
                    color: Color(0xFFEBEBEB),
                    child: ListTile(
                      title: Text(
                        "Mecklenburg-Vorpommen",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      trailing: Image(
                          image: AssetImage(
                              "assets/pictures/Mecklenburg-Vorpommern.png")),
                    ),
                  ),
                  Card(
                    color: Color(0xFFEBEBEB),
                    child: ListTile(
                      title: Text(
                        "Niedersachsen",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      trailing: Image(
                          image: AssetImage(
                              "assets/pictures/Niedersachsen.svg.png")),
                    ),
                  ),
                  Card(
                    color: Color(0xFFEBEBEB),
                    child: ListTile(
                      title: Text(
                        "Nordrhein-Westfalen",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      trailing: Image(
                          image: AssetImage(
                              "assets/pictures/Nordrhein-Westfalen.svg.png")),
                    ),
                  ),
                  Card(
                    color: Color(0xFFEBEBEB),
                    child: ListTile(
                      title: Text(
                        "Rheinland-Pfalz",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      trailing: Image(
                          image: AssetImage(
                              "assets/pictures/Rheinland-Pfalz.svg.png")),
                    ),
                  ),
                  Card(
                    color: Color(0xFFEBEBEB),
                    child: ListTile(
                      title: Text(
                        "Saarland",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      trailing: Image(
                          image:
                              AssetImage("assets/pictures/Saarlands.svg.png")),
                    ),
                  ),
                  Card(
                    color: Color(0xFFEBEBEB),
                    child: ListTile(
                      title: Text(
                        "Sachsen",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      trailing: Image(
                          image: AssetImage("assets/pictures/Sachsen.svg.png")),
                    ),
                  ),
                  Card(
                    color: Color(0xFFEBEBEB),
                    child: ListTile(
                      title: Text(
                        "Sachsen-Anhalt",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      trailing: Image(
                          image: AssetImage(
                              "assets/pictures/Sachsen-Anhalt.svg.png")),
                    ),
                  ),
                  Card(
                    color: Color(0xFFEBEBEB),
                    child: ListTile(
                      title: Text(
                        "Schleswig-Holstein",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      trailing: Image(
                          image: AssetImage(
                              "assets/pictures/Schleswig-Holstein.svg.png")),
                    ),
                  ),
                  Card(
                    color: Color(0xFFEBEBEB),
                    child: ListTile(
                      title: Text(
                        "Thüringen",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      trailing: Image(
                          image:
                              AssetImage("assets/pictures/Thueringen.svg.png")),
                    ),
                  ),
                ],
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
