import 'dart:convert';

import 'package:flutter/foundation.dart';

class Game {
  Player playerA;
  Player playerB;
  Field field;
  Game({
    required this.playerA,
    required this.playerB,
    required this.field,
  });

  Game copyWith({
    Player? playerA,
    Player? playerB,
    Field? field,
  }) {
    return Game(
      playerA: playerA ?? this.playerA,
      playerB: playerB ?? this.playerB,
      field: field ?? this.field,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'playerA': playerA.toMap(),
      'playerB': playerB.toMap(),
      'field': field.toMap(),
    };
  }

  factory Game.fromMap(Map<String, dynamic> map) {
    return Game(
      playerA: Player.fromMap(map['playerA'] as Map<String, dynamic>),
      playerB: Player.fromMap(map['playerB'] as Map<String, dynamic>),
      field: Field.fromMap(map['field'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Game.fromJson(String source) =>
      Game.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Game(playerA: $playerA, playerB: $playerB, field: $field)';

  @override
  bool operator ==(covariant Game other) {
    if (identical(this, other)) return true;

    return other.playerA == playerA &&
        other.playerB == playerB &&
        other.field == field;
  }

  @override
  int get hashCode => playerA.hashCode ^ playerB.hashCode ^ field.hashCode;
}

class Field {
  Card? jobZoneOne;
  Card? jobZoneTwo;
  Card? jobZoneThree;
  Card? jobZoneFour;
  Card? jobZoneFive;

  Card? creaturePlayerAOne;
  Card? creaturePlayerATwo;
  Card? creaturePlayerAThree;

  Card? itemPlayerAOne;
  Card? itemPlayerATwo;
  Card? itemPlayerAThree;

  Card? effectPlayerAOne;
  Card? effectPlayerATwo;
  Card? effectPlayerAThree;
  Card? effectPlayerAFour;

  Card? creaturePlayerBOne;
  Card? creaturePlayerBTwo;
  Card? creaturePlayerBThree;

  Card? itemPlayerBOne;
  Card? itemPlayerBTwo;
  Card? itemPlayerBThree;

  Card? effectPlayerBOne;
  Card? effectPlayerBTwo;
  Card? effectPlayerBThree;
  Card? effectPlayerBFour;
  Field({
    this.jobZoneOne,
    this.jobZoneTwo,
    this.jobZoneThree,
    this.jobZoneFour,
    this.jobZoneFive,
    this.creaturePlayerAOne,
    this.creaturePlayerATwo,
    this.creaturePlayerAThree,
    this.itemPlayerAOne,
    this.itemPlayerATwo,
    this.itemPlayerAThree,
    this.effectPlayerAOne,
    this.effectPlayerATwo,
    this.effectPlayerAThree,
    this.effectPlayerAFour,
    this.creaturePlayerBOne,
    this.creaturePlayerBTwo,
    this.creaturePlayerBThree,
    this.itemPlayerBOne,
    this.itemPlayerBTwo,
    this.itemPlayerBThree,
    this.effectPlayerBOne,
    this.effectPlayerBTwo,
    this.effectPlayerBThree,
    this.effectPlayerBFour,
  });

  Field copyWith({
    Card? jobZoneOne,
    Card? jobZoneTwo,
    Card? jobZoneThree,
    Card? jobZoneFour,
    Card? jobZoneFive,
    Card? creaturePlayerAOne,
    Card? creaturePlayerATwo,
    Card? creaturePlayerAThree,
    Card? itemPlayerAOne,
    Card? itemPlayerATwo,
    Card? itemPlayerAThree,
    Card? effectPlayerAOne,
    Card? effectPlayerATwo,
    Card? effectPlayerAThree,
    Card? effectPlayerAFour,
    Card? creaturePlayerBOne,
    Card? creaturePlayerBTwo,
    Card? creaturePlayerBThree,
    Card? itemPlayerBOne,
    Card? itemPlayerBTwo,
    Card? itemPlayerBThree,
    Card? effectPlayerBOne,
    Card? effectPlayerBTwo,
    Card? effectPlayerBThree,
    Card? effectPlayerBFour,
  }) {
    return Field(
      jobZoneOne: jobZoneOne ?? this.jobZoneOne,
      jobZoneTwo: jobZoneTwo ?? this.jobZoneTwo,
      jobZoneThree: jobZoneThree ?? this.jobZoneThree,
      jobZoneFour: jobZoneFour ?? this.jobZoneFour,
      jobZoneFive: jobZoneFive ?? this.jobZoneFive,
      creaturePlayerAOne: creaturePlayerAOne ?? this.creaturePlayerAOne,
      creaturePlayerATwo: creaturePlayerATwo ?? this.creaturePlayerATwo,
      creaturePlayerAThree: creaturePlayerAThree ?? this.creaturePlayerAThree,
      itemPlayerAOne: itemPlayerAOne ?? this.itemPlayerAOne,
      itemPlayerATwo: itemPlayerATwo ?? this.itemPlayerATwo,
      itemPlayerAThree: itemPlayerAThree ?? this.itemPlayerAThree,
      effectPlayerAOne: effectPlayerAOne ?? this.effectPlayerAOne,
      effectPlayerATwo: effectPlayerATwo ?? this.effectPlayerATwo,
      effectPlayerAThree: effectPlayerAThree ?? this.effectPlayerAThree,
      effectPlayerAFour: effectPlayerAFour ?? this.effectPlayerAFour,
      creaturePlayerBOne: creaturePlayerBOne ?? this.creaturePlayerBOne,
      creaturePlayerBTwo: creaturePlayerBTwo ?? this.creaturePlayerBTwo,
      creaturePlayerBThree: creaturePlayerBThree ?? this.creaturePlayerBThree,
      itemPlayerBOne: itemPlayerBOne ?? this.itemPlayerBOne,
      itemPlayerBTwo: itemPlayerBTwo ?? this.itemPlayerBTwo,
      itemPlayerBThree: itemPlayerBThree ?? this.itemPlayerBThree,
      effectPlayerBOne: effectPlayerBOne ?? this.effectPlayerBOne,
      effectPlayerBTwo: effectPlayerBTwo ?? this.effectPlayerBTwo,
      effectPlayerBThree: effectPlayerBThree ?? this.effectPlayerBThree,
      effectPlayerBFour: effectPlayerBFour ?? this.effectPlayerBFour,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobZoneOne': jobZoneOne?.toMap(),
      'jobZoneTwo': jobZoneTwo?.toMap(),
      'jobZoneThree': jobZoneThree?.toMap(),
      'jobZoneFour': jobZoneFour?.toMap(),
      'jobZoneFive': jobZoneFive?.toMap(),
      'creaturePlayerAOne': creaturePlayerAOne?.toMap(),
      'creaturePlayerATwo': creaturePlayerATwo?.toMap(),
      'creaturePlayerAThree': creaturePlayerAThree?.toMap(),
      'itemPlayerAOne': itemPlayerAOne?.toMap(),
      'itemPlayerATwo': itemPlayerATwo?.toMap(),
      'itemPlayerAThree': itemPlayerAThree?.toMap(),
      'effectPlayerAOne': effectPlayerAOne?.toMap(),
      'effectPlayerATwo': effectPlayerATwo?.toMap(),
      'effectPlayerAThree': effectPlayerAThree?.toMap(),
      'effectPlayerAFour': effectPlayerAFour?.toMap(),
      'creaturePlayerBOne': creaturePlayerBOne?.toMap(),
      'creaturePlayerBTwo': creaturePlayerBTwo?.toMap(),
      'creaturePlayerBThree': creaturePlayerBThree?.toMap(),
      'itemPlayerBOne': itemPlayerBOne?.toMap(),
      'itemPlayerBTwo': itemPlayerBTwo?.toMap(),
      'itemPlayerBThree': itemPlayerBThree?.toMap(),
      'effectPlayerBOne': effectPlayerBOne?.toMap(),
      'effectPlayerBTwo': effectPlayerBTwo?.toMap(),
      'effectPlayerBThree': effectPlayerBThree?.toMap(),
      'effectPlayerBFour': effectPlayerBFour?.toMap(),
    };
  }

  factory Field.fromMap(Map<String, dynamic> map) {
    return Field(
      jobZoneOne: map['jobZoneOne'] != null
          ? Card.fromMap(map['jobZoneOne'] as Map<String, dynamic>)
          : null,
      jobZoneTwo: map['jobZoneTwo'] != null
          ? Card.fromMap(map['jobZoneTwo'] as Map<String, dynamic>)
          : null,
      jobZoneThree: map['jobZoneThree'] != null
          ? Card.fromMap(map['jobZoneThree'] as Map<String, dynamic>)
          : null,
      jobZoneFour: map['jobZoneFour'] != null
          ? Card.fromMap(map['jobZoneFour'] as Map<String, dynamic>)
          : null,
      jobZoneFive: map['jobZoneFive'] != null
          ? Card.fromMap(map['jobZoneFive'] as Map<String, dynamic>)
          : null,
      creaturePlayerAOne: map['creaturePlayerAOne'] != null
          ? Card.fromMap(map['creaturePlayerAOne'] as Map<String, dynamic>)
          : null,
      creaturePlayerATwo: map['creaturePlayerATwo'] != null
          ? Card.fromMap(map['creaturePlayerATwo'] as Map<String, dynamic>)
          : null,
      creaturePlayerAThree: map['creaturePlayerAThree'] != null
          ? Card.fromMap(map['creaturePlayerAThree'] as Map<String, dynamic>)
          : null,
      itemPlayerAOne: map['itemPlayerAOne'] != null
          ? Card.fromMap(map['itemPlayerAOne'] as Map<String, dynamic>)
          : null,
      itemPlayerATwo: map['itemPlayerATwo'] != null
          ? Card.fromMap(map['itemPlayerATwo'] as Map<String, dynamic>)
          : null,
      itemPlayerAThree: map['itemPlayerAThree'] != null
          ? Card.fromMap(map['itemPlayerAThree'] as Map<String, dynamic>)
          : null,
      effectPlayerAOne: map['effectPlayerAOne'] != null
          ? Card.fromMap(map['effectPlayerAOne'] as Map<String, dynamic>)
          : null,
      effectPlayerATwo: map['effectPlayerATwo'] != null
          ? Card.fromMap(map['effectPlayerATwo'] as Map<String, dynamic>)
          : null,
      effectPlayerAThree: map['effectPlayerAThree'] != null
          ? Card.fromMap(map['effectPlayerAThree'] as Map<String, dynamic>)
          : null,
      effectPlayerAFour: map['effectPlayerAFour'] != null
          ? Card.fromMap(map['effectPlayerAFour'] as Map<String, dynamic>)
          : null,
      creaturePlayerBOne: map['creaturePlayerBOne'] != null
          ? Card.fromMap(map['creaturePlayerBOne'] as Map<String, dynamic>)
          : null,
      creaturePlayerBTwo: map['creaturePlayerBTwo'] != null
          ? Card.fromMap(map['creaturePlayerBTwo'] as Map<String, dynamic>)
          : null,
      creaturePlayerBThree: map['creaturePlayerBThree'] != null
          ? Card.fromMap(map['creaturePlayerBThree'] as Map<String, dynamic>)
          : null,
      itemPlayerBOne: map['itemPlayerBOne'] != null
          ? Card.fromMap(map['itemPlayerBOne'] as Map<String, dynamic>)
          : null,
      itemPlayerBTwo: map['itemPlayerBTwo'] != null
          ? Card.fromMap(map['itemPlayerBTwo'] as Map<String, dynamic>)
          : null,
      itemPlayerBThree: map['itemPlayerBThree'] != null
          ? Card.fromMap(map['itemPlayerBThree'] as Map<String, dynamic>)
          : null,
      effectPlayerBOne: map['effectPlayerBOne'] != null
          ? Card.fromMap(map['effectPlayerBOne'] as Map<String, dynamic>)
          : null,
      effectPlayerBTwo: map['effectPlayerBTwo'] != null
          ? Card.fromMap(map['effectPlayerBTwo'] as Map<String, dynamic>)
          : null,
      effectPlayerBThree: map['effectPlayerBThree'] != null
          ? Card.fromMap(map['effectPlayerBThree'] as Map<String, dynamic>)
          : null,
      effectPlayerBFour: map['effectPlayerBFour'] != null
          ? Card.fromMap(map['effectPlayerBFour'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Field.fromJson(String source) =>
      Field.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Field(jobZoneOne: $jobZoneOne, jobZoneTwo: $jobZoneTwo, jobZoneThree: $jobZoneThree, jobZoneFour: $jobZoneFour, jobZoneFive: $jobZoneFive, creaturePlayerAOne: $creaturePlayerAOne, creaturePlayerATwo: $creaturePlayerATwo, creaturePlayerAThree: $creaturePlayerAThree, itemPlayerAOne: $itemPlayerAOne, itemPlayerATwo: $itemPlayerATwo, itemPlayerAThree: $itemPlayerAThree, effectPlayerAOne: $effectPlayerAOne, effectPlayerATwo: $effectPlayerATwo, effectPlayerAThree: $effectPlayerAThree, effectPlayerAFour: $effectPlayerAFour, creaturePlayerBOne: $creaturePlayerBOne, creaturePlayerBTwo: $creaturePlayerBTwo, creaturePlayerBThree: $creaturePlayerBThree, itemPlayerBOne: $itemPlayerBOne, itemPlayerBTwo: $itemPlayerBTwo, itemPlayerBThree: $itemPlayerBThree, effectPlayerBOne: $effectPlayerBOne, effectPlayerBTwo: $effectPlayerBTwo, effectPlayerBThree: $effectPlayerBThree, effectPlayerBFour: $effectPlayerBFour)';
  }

  @override
  bool operator ==(covariant Field other) {
    if (identical(this, other)) return true;

    return other.jobZoneOne == jobZoneOne &&
        other.jobZoneTwo == jobZoneTwo &&
        other.jobZoneThree == jobZoneThree &&
        other.jobZoneFour == jobZoneFour &&
        other.jobZoneFive == jobZoneFive &&
        other.creaturePlayerAOne == creaturePlayerAOne &&
        other.creaturePlayerATwo == creaturePlayerATwo &&
        other.creaturePlayerAThree == creaturePlayerAThree &&
        other.itemPlayerAOne == itemPlayerAOne &&
        other.itemPlayerATwo == itemPlayerATwo &&
        other.itemPlayerAThree == itemPlayerAThree &&
        other.effectPlayerAOne == effectPlayerAOne &&
        other.effectPlayerATwo == effectPlayerATwo &&
        other.effectPlayerAThree == effectPlayerAThree &&
        other.effectPlayerAFour == effectPlayerAFour &&
        other.creaturePlayerBOne == creaturePlayerBOne &&
        other.creaturePlayerBTwo == creaturePlayerBTwo &&
        other.creaturePlayerBThree == creaturePlayerBThree &&
        other.itemPlayerBOne == itemPlayerBOne &&
        other.itemPlayerBTwo == itemPlayerBTwo &&
        other.itemPlayerBThree == itemPlayerBThree &&
        other.effectPlayerBOne == effectPlayerBOne &&
        other.effectPlayerBTwo == effectPlayerBTwo &&
        other.effectPlayerBThree == effectPlayerBThree &&
        other.effectPlayerBFour == effectPlayerBFour;
  }

  @override
  int get hashCode {
    return jobZoneOne.hashCode ^
        jobZoneTwo.hashCode ^
        jobZoneThree.hashCode ^
        jobZoneFour.hashCode ^
        jobZoneFive.hashCode ^
        creaturePlayerAOne.hashCode ^
        creaturePlayerATwo.hashCode ^
        creaturePlayerAThree.hashCode ^
        itemPlayerAOne.hashCode ^
        itemPlayerATwo.hashCode ^
        itemPlayerAThree.hashCode ^
        effectPlayerAOne.hashCode ^
        effectPlayerATwo.hashCode ^
        effectPlayerAThree.hashCode ^
        effectPlayerAFour.hashCode ^
        creaturePlayerBOne.hashCode ^
        creaturePlayerBTwo.hashCode ^
        creaturePlayerBThree.hashCode ^
        itemPlayerBOne.hashCode ^
        itemPlayerBTwo.hashCode ^
        itemPlayerBThree.hashCode ^
        effectPlayerBOne.hashCode ^
        effectPlayerBTwo.hashCode ^
        effectPlayerBThree.hashCode ^
        effectPlayerBFour.hashCode;
  }
}

class Player {
  String id;
  Deck deck;
  Deck jobDeck;
  Hand hand;
  Player({
    required this.id,
    required this.deck,
    required this.jobDeck,
    required this.hand,
  });

  Player copyWith({
    String? id,
    Deck? deck,
    Deck? jobDeck,
    Hand? hand,
  }) {
    return Player(
      id: id ?? this.id,
      deck: deck ?? this.deck,
      jobDeck: jobDeck ?? this.jobDeck,
      hand: hand ?? this.hand,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'deck': deck.toMap(),
      'jobDeck': jobDeck.toMap(),
      'hand': hand.toMap(),
    };
  }

  factory Player.fromMap(Map<String, dynamic> map) {
    return Player(
      id: map['id'] as String,
      deck: Deck.fromMap(map['deck'] as Map<String, dynamic>),
      jobDeck: Deck.fromMap(map['jobDeck'] as Map<String, dynamic>),
      hand: Hand.fromMap(map['hand'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Player.fromJson(String source) =>
      Player.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Player(id: $id, deck: $deck, jobDeck: $jobDeck, hand: $hand)';
  }

  @override
  bool operator ==(covariant Player other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.deck == deck &&
        other.jobDeck == jobDeck &&
        other.hand == hand;
  }

  @override
  int get hashCode {
    return id.hashCode ^ deck.hashCode ^ jobDeck.hashCode ^ hand.hashCode;
  }
}

class Card {
  String imageString;
  Card({
    required this.imageString,
  });

  Card copyWith({
    String? imageString,
  }) {
    return Card(
      imageString: imageString ?? this.imageString,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageString': imageString,
    };
  }

  factory Card.fromMap(Map<String, dynamic> map) {
    return Card(
      imageString: map['imageString'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Card.fromJson(String source) =>
      Card.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Card(imageString: $imageString)';

  @override
  bool operator ==(covariant Card other) {
    if (identical(this, other)) return true;

    return other.imageString == imageString;
  }

  @override
  int get hashCode => imageString.hashCode;
}

class Deck {
  List<Card> cards;
  Deck({
    required this.cards,
  });

  Deck copyWith({
    List<Card>? cards,
  }) {
    return Deck(
      cards: cards ?? this.cards,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cards': cards.map((x) => x.toMap()).toList(),
    };
  }

  factory Deck.fromMap(Map<String, dynamic> map) {
    return Deck(
      cards: List<Card>.from(
        (map['cards'] as List<int>).map<Card>(
          (x) => Card.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Deck.fromJson(String source) =>
      Deck.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Deck(cards: $cards)';

  @override
  bool operator ==(covariant Deck other) {
    if (identical(this, other)) return true;

    return listEquals(other.cards, cards);
  }

  @override
  int get hashCode => cards.hashCode;
}

class Hand {
  List<Card> cards;
  Hand({
    required this.cards,
  });

  Hand copyWith({
    List<Card>? cards,
  }) {
    return Hand(
      cards: cards ?? this.cards,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cards': cards.map((x) => x.toMap()).toList(),
    };
  }

  factory Hand.fromMap(Map<String, dynamic> map) {
    return Hand(
      cards: List<Card>.from(
        (map['cards'] as List<int>).map<Card>(
          (x) => Card.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Hand.fromJson(String source) =>
      Hand.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Hand(cards: $cards)';

  @override
  bool operator ==(covariant Hand other) {
    if (identical(this, other)) return true;

    return listEquals(other.cards, cards);
  }

  @override
  int get hashCode => cards.hashCode;
}

class Afterlife {
  List<String> cards;
  Afterlife({
    required this.cards,
  });

  Afterlife copyWith({
    List<String>? cards,
  }) {
    return Afterlife(
      cards: cards ?? this.cards,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cards': cards,
    };
  }

  factory Afterlife.fromMap(Map<String, dynamic> map) {
    return Afterlife(
      cards: List<String>.from((map['cards'] as List<String>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory Afterlife.fromJson(String source) =>
      Afterlife.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Afterlife(cards: $cards)';

  @override
  bool operator ==(covariant Afterlife other) {
    if (identical(this, other)) return true;

    return listEquals(other.cards, cards);
  }

  @override
  int get hashCode => cards.hashCode;
}
