import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'levelone_widget.dart' show LeveloneWidget;
import 'package:flutter/material.dart';

class LeveloneModel extends FlutterFlowModel<LeveloneWidget> {
  ///  Local state fields for this page.

  int? indeximage;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  int? imagesize;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<RandomPRecord>? imagelist;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
