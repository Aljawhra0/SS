import '/flutter_flow/flutter_flow_util.dart';
import 'tuesday_widget.dart' show TuesdayWidget;
import 'package:flutter/material.dart';

class TuesdayModel extends FlutterFlowModel<TuesdayWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
