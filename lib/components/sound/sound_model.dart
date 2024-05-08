import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sound_widget.dart' show SoundWidget;
import 'package:flutter/material.dart';

class SoundModel extends FlutterFlowModel<SoundWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for Slider widget.
  double? sliderValue;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
