

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sarnanoneve/icons/done.dart';

class Impianto {
  late String tipo;
  late String nome;
  late int stato;
  late int numero;



  Impianto({
    required this.tipo,
    required this.nome,
    required this.numero,
    required this.stato,

  });

  static Impianto fromJson(Map<String,dynamic> json) => Impianto(
    tipo: json['tipo'],
    nome: json['nome'],
    numero:  json['numero'],
    stato: json['stato'],
  );

  getIconTipo(){
    if (tipo == 'skilift') {
      return const Icon(SarnanoNeveIcons.skiilift,color: Colors.black,);
    } else if (tipo == 'seggiovia') {
      return const Icon(SarnanoNeveIcons.chairlift,color: Colors.black,);
    } else if (tipo == 'tapis roulant') {
      return const Icon(SarnanoNeveIcons.tapisroulant,color: Colors.black,);
    }else {
      return const Icon(SarnanoNeveIcons.chairlift,color: Colors.black,);
    }
  }

  getIconStato(){
    if (stato == 0) {
      return const Icon(SarnanoNeveIcons.clear,color: Colors.red);
    } else {
      return const Icon(SarnanoNeveIcons.done,color: Colors.green);
    }
  }

}