import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'sound_model.dart';
export 'sound_model.dart';

class SoundWidget extends StatefulWidget {
  const SoundWidget({super.key});

  @override
  State<SoundWidget> createState() => _SoundWidgetState();
}

class _SoundWidgetState extends State<SoundWidget> {
  late SoundModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SoundModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 300.0,
          height: 300.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0),
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 16.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: FlutterFlowTheme.of(context).error,
                        size: 24.0,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: Text(
                  'Music',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Switch.adaptive(
                value: _model.switchValue ??= true,
                onChanged: (newValue) async {
                  setState(() => _model.switchValue = newValue);
                },
                activeColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: FlutterFlowTheme.of(context).accent1,
                inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
                inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 11.0, 0.0, 0.0),
                child: Text(
                  'Sound',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              Slider(
                activeColor: FlutterFlowTheme.of(context).primary,
                inactiveColor: FlutterFlowTheme.of(context).alternate,
                min: 0.0,
                max: 10.0,
                value: _model.sliderValue ??= 5.0,
                onChanged: (newValue) {
                  newValue = double.parse(newValue.toStringAsFixed(2));
                  setState(() => _model.sliderValue = newValue);
                },
              ),
              FlutterFlowRadioButton(
                options: ['Dark mode', 'Light mode'].toList(),
                onChanged: (val) => setState(() {}),
                controller: _model.radioButtonValueController ??=
                    FormFieldController<String>(null),
                optionHeight: 32.0,
                textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
                selectedTextStyle:
                    FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                buttonPosition: RadioButtonPosition.left,
                direction: Axis.vertical,
                radioButtonColor: FlutterFlowTheme.of(context).primary,
                inactiveRadioButtonColor:
                    FlutterFlowTheme.of(context).secondaryText,
                toggleable: false,
                horizontalAlignment: WrapAlignment.start,
                verticalAlignment: WrapCrossAlignment.start,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
