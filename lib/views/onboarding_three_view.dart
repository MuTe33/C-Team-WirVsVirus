import 'package:flutter/material.dart';
import 'package:wirvsvirus/views/onboarding_four_view.dart';

class OnboardingThreeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF014B76),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 180.0),
              child:
                  Image(image: AssetImage("assets/illustrations/Abstand.png")),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 150.0, top: 40),
              child: Text(
                "Abstand halten.",
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
                "Händeschütteln vermeiden und 1-2 Meter Abstand zu anderen ein halten.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 30.0, top: 10, bottom: 10),
              child: Text(
                '''Dadurch senkt ihr euer Ansteckungsrisiko.
Die Tröpfchen aus Mund und Nase erreichen euch
und den anderen dann nicht mehr.''',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 280.0, top: 70),
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
                        color: Colors.black, shape: BoxShape.circle),
                  ),
                  SizedBox(width: 5),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
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
                            builder: (context) => OnboardingFourView()),
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
