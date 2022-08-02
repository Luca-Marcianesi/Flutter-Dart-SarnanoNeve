import 'package:flutter/material.dart';

import '../../Data/Network/PisteSource.dart';
import '../Component/PisteImpiantiText.dart';
import '../Component/Space.dart';


class PisteUI extends StatelessWidget {
  const PisteUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Color(0xFF90D3E8)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      spazioV(),
                      infoPista(),
                      spazioV(),
                      rowComprensorio('Sassotetto'),
                      spazioV(),
                      listaPiste('Sassotetto'),
                      spazioV(),
                      rowComprensorio('Maddalena'),
                      spazioV(),
                      listaPiste('Maddalena'),
                      spazioV(),
                    ],
                  ),
                ))));
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}

