import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sarnanoneve/Data/Network/PisteSource.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
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

Widget spazio() => const SizedBox(
      height: 25,
    );

Widget textInfo(String difficolta) => Text(
      difficolta,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    );

Widget comprensorio(String nome) => Row(
      children: [
        Text(
          nome,
          textAlign: TextAlign.left,
          style: const TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ],
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'SarnanoNeve'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
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
                  comprensorio('Sassotetto'),
                  spazio(),
                  listaPiste('Sassotetto'),
                  spazio(),
                  comprensorio('Maddalena'),
                  spazio(),
                  listaPiste('Maddalena'),
                  spazio(),
                ],
              ),
            ))));
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
