import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sarnanoneve/Ui/Home/HomeUi.dart';
import 'package:sarnanoneve/Ui/ImpiantiPiste/ListContainerUI.dart';

import '../icons/done.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

TextStyle textButton() =>
    const TextStyle(color: Colors.black, fontWeight: FontWeight.normal);

BoxDecoration buttonDecoretor() => const BoxDecoration(
    gradient: LinearGradient(
        colors: [Colors.white, Color(0xFF90D3E8)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter));

ButtonStyle buttonStyle() => ElevatedButton.styleFrom(
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    primary: Colors.transparent,
    elevation: 0,
    shadowColor: Colors.transparent);

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
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'SaranoNeve'),
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

  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: getPage());
  }

  getPage() {
    switch (selectedPage) {
      case 0:
        return const HomeUi();
      case 1:
        return const ListContainer(value: 1);
    }
  }

  getBottomBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(SarnanoNeveIcons.seggiovia), label: "Impianti"),
      ],
      onTap: (tapped) {
        setState(() {
          selectedPage = tapped;
        });
      },
    );
  }
}
