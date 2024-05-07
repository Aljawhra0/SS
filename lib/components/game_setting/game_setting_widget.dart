import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'game_setting_model.dart';
export 'game_setting_model.dart';

class GameSettingWidget extends StatefulWidget {
  const GameSettingWidget({super.key});

  @override
  State<GameSettingWidget> createState() => _GameSettingWidgetState();
}

class _GameSettingWidgetState extends State<GameSettingWidget> {
  late GameSettingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GameSettingModel());

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
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Multiple Players',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
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
            ],
          ),
        ),
      ],
    );
  }
}
