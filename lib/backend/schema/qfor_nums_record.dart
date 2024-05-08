import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class QforNumsRecord extends FirestoreRecord {
  QforNumsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "numbers" field.
  String? _numbers;
  String get numbers => _numbers ?? '';
  bool hasNumbers() => _numbers != null;

  void _initializeFields() {
    _numbers = snapshotData['numbers'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('QforNums');

  static Stream<QforNumsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QforNumsRecord.fromSnapshot(s));

  static Future<QforNumsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QforNumsRecord.fromSnapshot(s));

  static QforNumsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      QforNumsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QforNumsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QforNumsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QforNumsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QforNumsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQforNumsRecordData({
  String? numbers,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'numbers': numbers,
    }.withoutNulls,
  );

  return firestoreData;
}

class QforNumsRecordDocumentEquality implements Equality<QforNumsRecord> {
  const QforNumsRecordDocumentEquality();

  @override
  bool equals(QforNumsRecord? e1, QforNumsRecord? e2) {
    return e1?.numbers == e2?.numbers;
  }

  @override
  int hash(QforNumsRecord? e) => const ListEquality().hash([e?.numbers]);

  @override
  bool isValidKey(Object? o) => o is QforNumsRecord;
}
