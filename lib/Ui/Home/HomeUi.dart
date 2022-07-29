import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../ImpiantiPiste/ListContainerUI.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({Key? key}) : super(key: key);

  @override
  State<HomeUi> createState() => HomeState();
}

class HomeState extends State<HomeUi> {
  get tabPositionImpainti => 1;

  get tabPositionPiste => 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: background(),
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: buttonDecoretor(),
                        child: ElevatedButton(
                          style: buttonStyle(),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  ListContainer(value: tabPositionPiste),
                            ));
                          },
                          child: Text("Piste", style: textButton()),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: buttonDecoretor(),
                        child: ElevatedButton(
                          style: buttonStyle(),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  ListContainer(value: tabPositionImpainti),
                            ));
                          },
                          child: Text("Impianti", style: textButton()),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

TextStyle textButton() =>
    const TextStyle(color: Colors.black, fontWeight: FontWeight.normal);

BoxDecoration background() =>
    const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.lightBlueAccent],
            begin: Alignment.topCenter, end: Alignment.bottomCenter));


BoxDecoration buttonDecoretor() =>
    const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.white, Color(0xFF90D3E8)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter));

ButtonStyle buttonStyle() =>
    ElevatedButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        primary: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent);
