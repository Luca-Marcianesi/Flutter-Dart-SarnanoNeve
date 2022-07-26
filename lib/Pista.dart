import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:sarnanoneve/icons/done.dart';

class Pista {
  late String difficolta;
  late String nome;
  late int stato;
  late int numero;
  late Color color;
  late Icon icon;


  Pista({
    required this.difficolta,
    required this.nome,
    required this.numero,
    required this.stato,

});

  static Pista fromJson(Map<String,dynamic> json) => Pista(
    difficolta: json['difficolta'],
    nome: json['nome'],
    numero:  json['numero'],
    stato: json['stato'],
  );

  getColor(){
    if (difficolta == 'blu') {
      return const Color(0xFF0000FF);
    } else if (difficolta == 'rossa') {
      return const Color(0xFFFF0000);
    } else if (difficolta == 'nera') {
      return const Color(0xFF000000);
    }else {
      return const Color(0xFF00FF00);
    }
  }

  getIconStato(){
    if (stato == 0) {
      return const Icon(MyFlutterApp.clear,color: Color(0xFFFF0000));
    } else {
      return const Icon(MyFlutterApp.done,color: Color(0xFF00FF00));
    }
  }

}