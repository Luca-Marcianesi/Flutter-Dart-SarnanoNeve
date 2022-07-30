import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sarnanoneve/Ui/GenericComponent.dart';
import 'package:sarnanoneve/icons/done.dart';

import '../ImpiantiPiste/ListContainerUI.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({Key? key}) : super(key: key);

  @override
  State<HomeUi> createState() => HomeState();
}

class HomeState extends State<HomeUi> {
  get tabPositionImpainti => 1;

  get tabPositionPiste => 0;

  get iconSize => 50.0;

  int get thisPage => 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,

      ),
      body: Container(
        decoration: background(),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
                spazioH(),
                const SizedBox(
                  width: 250,
                  child: Image(image: AssetImage('asset/image/2.png'),),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  spazioV(),
                  spazioV(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: buttonDecoretor(),
                        child: ElevatedButton.icon(
                          icon: Icon(SarnanoNeveIcons.alpine,
                              color: Colors.black, size: iconSize),
                          label: Text("PISTE", style: textButton()),
                          style: buttonStyle(),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  ListContainer(value: tabPositionPiste),
                            ));
                          },
                        ),
                      ),
                      spazioH()
                    ],
                  ),
                  spazioV(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      spazioH(),
                      Container(
                        decoration: buttonDecoretor(),
                        child: ElevatedButton.icon(
                          label: Text("IMPIANTI", style: textButton()),
                          icon: Icon(SarnanoNeveIcons.seggiovia,
                              color: Colors.black, size: iconSize),
                          style: buttonStyle(),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  ListContainer(value: tabPositionImpainti),
                            ));
                          },
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
      bottomNavigationBar: getBottomBar(context,thisPage),
    );
  }
}

TextStyle textButton() => const TextStyle(
    color: Colors.black,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.normal,
    fontSize: 20);

BoxDecoration background() => const BoxDecoration(
    gradient: LinearGradient(
        colors: [Colors.indigo, Colors.lightBlueAccent],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter));

BoxDecoration buttonDecoretor() => const BoxDecoration(
    gradient: LinearGradient(
        colors: [Colors.white, Color(0xFF90D3E8)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter));

ButtonStyle buttonStyle() => ElevatedButton.styleFrom(
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    primary: Colors.transparent,
    elevation: 0,
    minimumSize: const Size(200, 110),
    shadowColor: Colors.transparent);
