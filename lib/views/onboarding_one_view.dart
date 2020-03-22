import 'package:flutter/material.dart';
import 'package:wirvsvirus/views/onboarding_two_view.dart';

class OnboardingOneView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF014B76),
      body: Stack(children: [
        Positioned(
          bottom: MediaQuery.of(context).size.width * 0.9,
          left: MediaQuery.of(context).size.width * 0.20,
          child: Column(
            children: [
              Text(
                "Willkommen bei",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "staatus",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 70,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Offizielle Corona News",
                style: TextStyle(color: Color(0xFF99DDC5), fontSize: 20),
              ),
            ],
          ),
        ),
        Positioned(
          right: MediaQuery.of(context).size.width * 0.08,
          bottom: MediaQuery.of(context).size.height * 0.1,
          child: Row(
            children: <Widget>[
              Container(
                width: 10,
                height: 10,
                decoration:
                    BoxDecoration(color: Colors.black, shape: BoxShape.circle),
              ),
              SizedBox(width: 5),
              Container(
                width: 10,
                height: 10,
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              ),
              SizedBox(width: 5),
              Container(
                width: 10,
                height: 10,
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              ),
              SizedBox(width: 5),
              Container(
                width: 10,
                height: 10,
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
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
                        builder: (context) => OnboardingTwoView()),
                  );
                },
              ),
            ],
          ),
        )
      ]),
    );
  }
}
