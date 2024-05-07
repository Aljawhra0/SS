import '/flutter_flow/flutter_flow_util.dart';
import 'thursday_widget.dart' show ThursdayWidget;
import 'package:flutter/material.dart';

class ThursdayModel extends FlutterFlowModel<ThursdayWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
