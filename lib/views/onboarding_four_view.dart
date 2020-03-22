import 'package:flutter/material.dart';
import 'package:wirvsvirus/shared/bottomNavigationBar/bottom_navigator.dart';

class OnboardingFourView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF014B76),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
            Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: Image(image: AssetImage("assets/illustrations/Home.png")),
            ),
           
            Padding(
              padding: const EdgeInsets.only(right: 135.0, top: 40),
              child: Text(
                "Zuhause bleiben.",
                style: TextStyle(
                    color: Color(0xFF99DDC5),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 60.0, right: 60.0, top: 10, bottom: 10),
              child: Text(
                "Damit sich das Virus langsamer verbreitet. Wer sich schützt, schützt auch andere. Vor allem unsere Älteren und gesundheitlich vorbelasteten Mitmenschen jeden Alters.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 60.0, right: 60.0, top: 10, bottom: 10),
              child: Text(
                "Auch wenn wir räumlich auf Distanz gehen müssen, halten wir umso mehr zusammen.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontStyle: FontStyle.italic),
              ),
            ),
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.only(left: 280.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.black, shape: BoxShape.circle),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    child: Container(
                      child: Icon(IconData(0xe801, fontFamily: "Arrow")),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavigator()),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
