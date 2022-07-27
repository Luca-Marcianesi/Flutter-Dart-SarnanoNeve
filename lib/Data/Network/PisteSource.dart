import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../DataClass/Pista.dart';

Widget listaPiste(String comprensorio) => StreamBuilder<List<Pista>>(
    stream: readPiste(comprensorio),
    builder: (context, snapshot) {
      if (snapshot.hasError) {
        return const Text('Errore');
      } else if (snapshot.hasData) {
        final piste = snapshot.data!;
        return ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: piste.map(biuldPista).toList(),
        );
      } else {
        return const Center(child: CircularProgressIndicator());
      }
    });

Stream<List<Pista>> readPiste(String comprensorio) => FirebaseFirestore.instance
    .collection('SarnanoNeve')
    .doc(comprensorio)
    .collection('Piste')
    .orderBy('numero')
    .snapshots()
    .map((snapshot) =>
    snapshot.docs.map((e) => Pista.fromJson(e.data())).toList());

Widget biuldPista(Pista pista) => ListTile(
  leading: CircleAvatar(
    backgroundColor: pista.getColor(),
    child: Text('${pista.numero}'),
  ),
  title: Text(
    pista.nome,
    style: const TextStyle(
      color: Color(0xFF0D4E86),
      fontSize: 16,
    ),
  ),
  trailing: pista.getIconStato(),
);