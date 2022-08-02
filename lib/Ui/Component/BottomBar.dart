import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../icons/icon.dart';
import '../Home/HomeUi.dart';
import '../ImpiantiPiste/ListContainerUI.dart';

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
