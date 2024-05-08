import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class RpRecord extends FirestoreRecord {
  RpRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "im1" field.
  List<String>? _im1;
  List<String> get im1 => _im1 ?? const [];
  bool hasIm1() => _im1 != null;

  void _initializeFields() {
    _im1 = getDataList(snapshotData['im1']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RP');

  static Stream<RpRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RpRecord.fromSnapshot(s));

  static Future<RpRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RpRecord.fromSnapshot(s));

  static RpRecord fromSnapshot(DocumentSnapshot snapshot) => RpRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RpRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RpRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RpRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RpRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRpRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class RpRecordDocumentEquality implements Equality<RpRecord> {
  const RpRecordDocumentEquality();

  @override
  bool equals(RpRecord? e1, RpRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.im1, e2?.im1);
  }

  @override
  int hash(RpRecord? e) => const ListEquality().hash([e?.im1]);

  @override
  bool isValidKey(Object? o) => o is RpRecord;
}
