import 'package:flutter/material.dart';
import 'package:sarnanoneve/Data/Network/ImpiantoSource.dart';
import '../GenericComponent.dart';

class ImpiantiUI extends StatelessWidget {
  const ImpiantiUI({Key? key}) : super(key: key);

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
                      spazio(),
                      infoPista(),
                      spazio(),
                      comprensorio('Impianti Sassotetto'),
                      spazio(),
                      listaImpianti('Sassotetto'),
                      spazio(),
                      comprensorio(' Impianti Maddalena'),
                      spazio(),
                      listaImpianti('Maddalena'),
                      spazio(),
                    ],
                  ),
                ))));
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}

Widget infoPista() => Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    const CircleAvatar(
      radius: 15,
      backgroundColor: Colors.blueAccent,
    ),
    textInfo('Facile'),
    const CircleAvatar(
      radius: 15,
      backgroundColor: Colors.red,
    ),
    textInfo('Media'),
    const CircleAvatar(
      radius: 15,
      backgroundColor: Colors.black,
    ),
    textInfo('Difficile')
  ],
);