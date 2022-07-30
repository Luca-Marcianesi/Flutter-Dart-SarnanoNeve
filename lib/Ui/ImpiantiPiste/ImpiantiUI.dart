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
                      spazioV(),
                      infoImpiabti(),
                      spazioV(),
                      comprensorio('Impianti Sassotetto'),
                      spazioV(),
                      listaImpianti('Sassotetto'),
                      spazioV(),
                      comprensorio(' Impianti Maddalena'),
                      spazioV(),
                      listaImpianti('Maddalena'),
                      spazioV(),
                    ],
                  ),
                ))));
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}

Widget infoImpiabti() => Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: const [
    Icon(Icons.watch_later_outlined,color: Colors.indigo,),
    Text("Gli impianti sono aperti dalle 8:30 alle 16:30")
  ],
);