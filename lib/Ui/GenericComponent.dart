import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


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

