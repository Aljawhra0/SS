// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class QuestionsStruct extends FFFirebaseStruct {
  QuestionsStruct({
    String? what,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _what = what,
        super(firestoreUtilData);

  // "what" field.
  String? _what;
  String get what => _what ?? 'one';
  set what(String? val) => _what = val;
  bool hasWhat() => _what != null;

  static QuestionsStruct fromMap(Map<String, dynamic> data) => QuestionsStruct(
        what: data['what'] as String?,
      );

  static QuestionsStruct? maybeFromMap(dynamic data) => data is Map
      ? QuestionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'what': _what,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'what': serializeParam(
          _what,
          ParamType.String,
        ),
      }.withoutNulls;

  static QuestionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuestionsStruct(
        what: deserializeParam(
          data['what'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'QuestionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QuestionsStruct && what == other.what;
  }

  @override
  int get hashCode => const ListEquality().hash([what]);
}

QuestionsStruct createQuestionsStruct({
  String? what,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    QuestionsStruct(
      what: what,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

QuestionsStruct? updateQuestionsStruct(
  QuestionsStruct? questions, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    questions
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addQuestionsStructData(
  Map<String, dynamic> firestoreData,
  QuestionsStruct? questions,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (questions == null) {
    return;
  }
  if (questions.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && questions.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final questionsData = getQuestionsFirestoreData(questions, forFieldValue);
  final nestedData = questionsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = questions.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getQuestionsFirestoreData(
  QuestionsStruct? questions, [
  bool forFieldValue = false,
]) {
  if (questions == null) {
    return {};
  }
  final firestoreData = mapToFirestore(questions.toMap());

  // Add any Firestore field values
  questions.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQuestionsListFirestoreData(
  List<QuestionsStruct>? questionss,
) =>
    questionss?.map((e) => getQuestionsFirestoreData(e, true)).toList() ?? [];
