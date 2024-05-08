import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GameResultRecord extends FirestoreRecord {
  GameResultRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "score" field.
  int? _score;
  int get score => _score ?? 0;
  bool hasScore() => _score != null;

  void _initializeFields() {
    _score = castToType<int>(snapshotData['score']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('gameResult');

  static Stream<GameResultRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GameResultRecord.fromSnapshot(s));

  static Future<GameResultRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GameResultRecord.fromSnapshot(s));

  static GameResultRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GameResultRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GameResultRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GameResultRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GameResultRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GameResultRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGameResultRecordData({
  int? score,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'score': score,
    }.withoutNulls,
  );

  return firestoreData;
}

class GameResultRecordDocumentEquality implements Equality<GameResultRecord> {
  const GameResultRecordDocumentEquality();

  @override
  bool equals(GameResultRecord? e1, GameResultRecord? e2) {
    return e1?.score == e2?.score;
  }

  @override
  int hash(GameResultRecord? e) => const ListEquality().hash([e?.score]);

  @override
  bool isValidKey(Object? o) => o is GameResultRecord;
}
