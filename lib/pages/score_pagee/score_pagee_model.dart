import '/flutter_flow/flutter_flow_util.dart';
import 'score_pagee_widget.dart' show ScorePageeWidget;
import 'package:flutter/material.dart';

class ScorePageeModel extends FlutterFlowModel<ScorePageeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
