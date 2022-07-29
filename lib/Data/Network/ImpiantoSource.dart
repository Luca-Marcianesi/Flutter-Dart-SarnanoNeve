import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sarnanoneve/Data/DataClass/Impianto.dart';

Widget listaImpianti(String comprensorio) => StreamBuilder<List<Impianto>>(
    stream: readImpianti(comprensorio),
    builder: (context, snapshot) {
      if (snapshot.hasError) {
        return const Text('Errore');
      } else if (snapshot.hasData) {
        final impianto = snapshot.data!;
        return ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: impianto.map(buidImpianto).toList(),
        );
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });

Stream<List<Impianto>> readImpianti(String comprensorio) => FirebaseFirestore.instance
    .collection('SarnanoNeve')
    .doc(comprensorio)
    .collection('Impianti')
    .orderBy('numero')
    .snapshots()
    .map((snapshot) =>
    snapshot.docs.map((e) => Impianto.fromJson(e.data())).toList());

Widget buidImpianto(Impianto impianto) => ListTile(
  leading: ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: Container(
      height: 40,
      width: 40,
      color: Colors.transparent,
      child:impianto.getIconTipo(),
    ),
  ),

  title: Text(
    impianto.nome,
    style: const TextStyle(
      color: Color(0xFF0D4E86),
      fontSize: 16,
    ),
  ),
  trailing: impianto.getIconStato(),
);