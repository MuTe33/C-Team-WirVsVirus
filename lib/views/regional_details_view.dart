import 'package:flutter/material.dart';

class RegionalDetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text(
            "staatus",
            style: TextStyle(color: Colors.black, fontSize: 26),
          ),
          backgroundColor: Colors.white),
      body: Column(
        children: <Widget>[
          InkWell(
            child: Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.blue,
                    ),
                    onPressed: () => Navigator.of(context).pop()),
                Text(
                  "Zurück",
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                )
              ],
            ),
            onTap: () => Navigator.of(context).pop(),
          ),
          Card(
            color: Color(0xFF99DDC5),
            child: ListTile(
                title: Text(
                  "Bayern",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                trailing:
                    Image(image: AssetImage("assets/pictures/Bayerm.png"))),
          ),
          Expanded(
            child: ListView(
              children: [
                Image(image: AssetImage("assets/pictures/Bayern.png")),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Die neuen Ausgangsbeschränkungen in Bayern gegen das Coronavirus",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 12.0, top: 10, bottom: 10),
                  child: Text(
                    "Ab 21. März 2020 - zwei Wochen!",
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    '''Das Coronavirus kann von Mensch zu Mensch übertragen werden. Um das Ansteckungsrisiko zu verringern, gilt daher wie für alle Infektionskrankheiten: gute Handhygiene, Husten- und Nies-Etikette sowie Abstand zu Erkrankten halten.

Eine Übertragung über importierte Lebensmittel und andere importierte Waren wie beispielsweise Spielzeug ist bisher nicht dokumentiert. Das für diese Frage zuständige Bundesinstitut  für Risikobewertung  kommt zu der Auffassung: Nach derzeitigem Wissensstand ist es unwahrscheinlich, dass importierte Waren Quelle einer Infektion mit dem neuartigen Coronavirus sein könnten. Nach aktuellem Stand der Wissenschaft kann das Coronavirus auch nicht von Haustieren auf Menschen oder umgekehrt von Menschen auf Haustieren übertragen werden.''',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
