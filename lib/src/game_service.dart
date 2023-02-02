import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecocadia_simulator/src/models.dart';

var _gameRef = FirebaseFirestore.instance.collection('Game').withConverter(
      fromFirestore: (snapshot, options) => Game.fromMap(snapshot.data()!),
      toFirestore: (game, options) => game.toMap(),
    );
