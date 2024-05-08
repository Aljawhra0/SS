import '/flutter_flow/flutter_flow_util.dart';
import 'sunday_widget.dart' show SundayWidget;
import 'package:flutter/material.dart';

class SundayModel extends FlutterFlowModel<SundayWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
