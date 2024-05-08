import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class NoitiRecord extends FirestoreRecord {
  NoitiRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "creat_acc" field.
  DocumentReference? _creatAcc;
  DocumentReference? get creatAcc => _creatAcc;
  bool hasCreatAcc() => _creatAcc != null;

  // "timer" field.
  DocumentReference? _timer;
  DocumentReference? get timer => _timer;
  bool hasTimer() => _timer != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _creatAcc = snapshotData['creat_acc'] as DocumentReference?;
    _timer = snapshotData['timer'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('noiti')
          : FirebaseFirestore.instance.collectionGroup('noiti');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('noiti').doc(id);

  static Stream<NoitiRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NoitiRecord.fromSnapshot(s));

  static Future<NoitiRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NoitiRecord.fromSnapshot(s));

  static NoitiRecord fromSnapshot(DocumentSnapshot snapshot) => NoitiRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NoitiRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NoitiRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NoitiRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NoitiRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNoitiRecordData({
  DocumentReference? creatAcc,
  DocumentReference? timer,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'creat_acc': creatAcc,
      'timer': timer,
    }.withoutNulls,
  );

  return firestoreData;
}

class NoitiRecordDocumentEquality implements Equality<NoitiRecord> {
  const NoitiRecordDocumentEquality();

  @override
  bool equals(NoitiRecord? e1, NoitiRecord? e2) {
    return e1?.creatAcc == e2?.creatAcc && e1?.timer == e2?.timer;
  }

  @override
  int hash(NoitiRecord? e) =>
      const ListEquality().hash([e?.creatAcc, e?.timer]);

  @override
  bool isValidKey(Object? o) => o is NoitiRecord;
}
