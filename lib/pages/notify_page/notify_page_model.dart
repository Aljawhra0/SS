import '/flutter_flow/flutter_flow_util.dart';
import 'notify_page_widget.dart' show NotifyPageWidget;
import 'package:flutter/material.dart';

class NotifyPageModel extends FlutterFlowModel<NotifyPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
