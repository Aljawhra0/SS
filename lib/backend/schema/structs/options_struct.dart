// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OptionsStruct extends FFFirebaseStruct {
  OptionsStruct({
    List<String>? o1,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _o1 = o1,
        super(firestoreUtilData);

  // "o1" field.
  List<String>? _o1;
  List<String> get o1 => _o1 ?? const [];
  set o1(List<String>? val) => _o1 = val;
  void updateO1(Function(List<String>) updateFn) => updateFn(_o1 ??= []);
  bool hasO1() => _o1 != null;

  static OptionsStruct fromMap(Map<String, dynamic> data) => OptionsStruct(
        o1: getDataList(data['o1']),
      );

  static OptionsStruct? maybeFromMap(dynamic data) =>
      data is Map ? OptionsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'o1': _o1,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'o1': serializeParam(
          _o1,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static OptionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      OptionsStruct(
        o1: deserializeParam<String>(
          data['o1'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'OptionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is OptionsStruct && listEquality.equals(o1, other.o1);
  }

  @override
  int get hashCode => const ListEquality().hash([o1]);
}

OptionsStruct createOptionsStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OptionsStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OptionsStruct? updateOptionsStruct(
  OptionsStruct? options, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    options
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOptionsStructData(
  Map<String, dynamic> firestoreData,
  OptionsStruct? options,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (options == null) {
    return;
  }
  if (options.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && options.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final optionsData = getOptionsFirestoreData(options, forFieldValue);
  final nestedData = optionsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = options.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOptionsFirestoreData(
  OptionsStruct? options, [
  bool forFieldValue = false,
]) {
  if (options == null) {
    return {};
  }
  final firestoreData = mapToFirestore(options.toMap());

  // Add any Firestore field values
  options.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOptionsListFirestoreData(
  List<OptionsStruct>? optionss,
) =>
    optionss?.map((e) => getOptionsFirestoreData(e, true)).toList() ?? [];
