import 'package:flutter/material.dart';
import 'package:sarnanoneve/Ui/Component/Background.dart';
import 'package:sarnanoneve/icons/icon.dart';

import '../Component/BottomBar.dart';
import '../Component/Button.dart';
import '../Component/Space.dart';
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
        decoration: backgroundHome(),
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


