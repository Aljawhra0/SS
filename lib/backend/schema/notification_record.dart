import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class NotificationRecord extends FirestoreRecord {
  NotificationRecord._(
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

  void _initializeFields() {
    _creatAcc = snapshotData['creat_acc'] as DocumentReference?;
    _timer = snapshotData['timer'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notification');

  static Stream<NotificationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationRecord.fromSnapshot(s));

  static Future<NotificationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationRecord.fromSnapshot(s));

  static NotificationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationRecordData({
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

class NotificationRecordDocumentEquality
    implements Equality<NotificationRecord> {
  const NotificationRecordDocumentEquality();

  @override
  bool equals(NotificationRecord? e1, NotificationRecord? e2) {
    return e1?.creatAcc == e2?.creatAcc && e1?.timer == e2?.timer;
  }

  @override
  int hash(NotificationRecord? e) =>
      const ListEquality().hash([e?.creatAcc, e?.timer]);

  @override
  bool isValidKey(Object? o) => o is NotificationRecord;
}
