import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class RandomPRecord extends FirestoreRecord {
  RandomPRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RandomP');

  static Stream<RandomPRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RandomPRecord.fromSnapshot(s));

  static Future<RandomPRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RandomPRecord.fromSnapshot(s));

  static RandomPRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RandomPRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RandomPRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RandomPRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RandomPRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RandomPRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRandomPRecordData({
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class RandomPRecordDocumentEquality implements Equality<RandomPRecord> {
  const RandomPRecordDocumentEquality();

  @override
  bool equals(RandomPRecord? e1, RandomPRecord? e2) {
    return e1?.image == e2?.image;
  }

  @override
  int hash(RandomPRecord? e) => const ListEquality().hash([e?.image]);

  @override
  bool isValidKey(Object? o) => o is RandomPRecord;
}
