import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../icons/done.dart';
import 'Home/HomeUi.dart';
import 'ImpiantiPiste/ListContainerUI.dart';

Widget spazioV() => const SizedBox(
      height: 25,
    );

Widget spazioH() => const SizedBox(
      width: 25,
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

Widget getBottomBar(BuildContext contexte, int thisPage) => BottomNavigationBar(
  currentIndex: thisPage,
        selectedItemColor: Colors.indigo,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(SarnanoNeveIcons.seggiovia,), label: "Impianti"),
        ],
        onTap: (tapped) {
          if (tapped != thisPage) {
            switch (tapped) {
              case 0:
                Navigator.of(contexte).push(MaterialPageRoute(
                  builder: (context) => const HomeUi(),
                ));
                break;
              case 1:
                Navigator.of(contexte).push(MaterialPageRoute(
                  builder: (context) => const ListContainer(value: 1),
                ));
            }
          }
        });
