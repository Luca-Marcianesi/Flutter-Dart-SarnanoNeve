import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget textInfo(String difficolta) => Text(
  difficolta,
  style: const TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  ),
);

Widget rowComprensorio(String nome) => Row(
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

Widget infoImpiabti() => Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: const [
    Icon(Icons.watch_later_outlined,color: Colors.indigo,),
    Text("Gli impianti sono aperti dalle 8:30 alle 16:30")
  ],
);

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