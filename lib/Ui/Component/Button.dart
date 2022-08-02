import 'package:flutter/material.dart';

TextStyle textButton() => const TextStyle(
    color: Colors.black,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.normal,
    fontSize: 20);


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