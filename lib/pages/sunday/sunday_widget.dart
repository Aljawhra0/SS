import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'sunday_model.dart';
export 'sunday_model.dart';

class SundayWidget extends StatefulWidget {
  const SundayWidget({super.key});

  @override
  State<SundayWidget> createState() => _SundayWidgetState();
}

class _SundayWidgetState extends State<SundayWidget> {
  late SundayModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SundayModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).accent1,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Sunday:',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 411.0,
                height: 436.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Align(
                  alignment: const AlignmentDirectional(1.0, 0.0),
                  child: Text(
                    ' Here\'s a tip for the day:\n\nPalm orientation:\n The palm orientation of the  handshape  can change the meaning of the number. \n For example, the number 1 with  the palm  facing outward can mean \"one,\" while with the palm facing inward, it can mean \"first.\"',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 28.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Container(
                width: 404.0,
                height: 336.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
                child: Text(
                  '\n   your Exercise for the day:\n\n\n        Level one:\n        memorize at least 2 Numbers',
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
