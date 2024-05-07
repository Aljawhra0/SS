// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimerStruct extends FFFirebaseStruct {
  TimerStruct({
    int? timer,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _timer = timer,
        super(firestoreUtilData);

  // "Timer" field.
  int? _timer;
  int get timer => _timer ?? 60;
  set timer(int? val) => _timer = val;
  void incrementTimer(int amount) => _timer = timer + amount;
  bool hasTimer() => _timer != null;

  static TimerStruct fromMap(Map<String, dynamic> data) => TimerStruct(
        timer: castToType<int>(data['Timer']),
      );

  static TimerStruct? maybeFromMap(dynamic data) =>
      data is Map ? TimerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Timer': _timer,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Timer': serializeParam(
          _timer,
          ParamType.int,
        ),
      }.withoutNulls;

  static TimerStruct fromSerializableMap(Map<String, dynamic> data) =>
      TimerStruct(
        timer: deserializeParam(
          data['Timer'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TimerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TimerStruct && timer == other.timer;
  }

  @override
  int get hashCode => const ListEquality().hash([timer]);
}

TimerStruct createTimerStruct({
  int? timer,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TimerStruct(
      timer: timer,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TimerStruct? updateTimerStruct(
  TimerStruct? timerStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    timerStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTimerStructData(
  Map<String, dynamic> firestoreData,
  TimerStruct? timerStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (timerStruct == null) {
    return;
  }
  if (timerStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && timerStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final timerStructData = getTimerFirestoreData(timerStruct, forFieldValue);
  final nestedData =
      timerStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = timerStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTimerFirestoreData(
  TimerStruct? timerStruct, [
  bool forFieldValue = false,
]) {
  if (timerStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(timerStruct.toMap());

  // Add any Firestore field values
  timerStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTimerListFirestoreData(
  List<TimerStruct>? timerStructs,
) =>
    timerStructs?.map((e) => getTimerFirestoreData(e, true)).toList() ?? [];
