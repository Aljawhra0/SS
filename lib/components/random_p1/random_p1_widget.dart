import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'random_p1_model.dart';
export 'random_p1_model.dart';

class RandomP1Widget extends StatefulWidget {
  const RandomP1Widget({
    super.key,
    this.imagepath,
  });

  final String? imagepath;

  @override
  State<RandomP1Widget> createState() => _RandomP1WidgetState();
}

class _RandomP1WidgetState extends State<RandomP1Widget> {
  late RandomP1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RandomP1Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 300.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          widget.imagepath!,
          width: 300.0,
          height: 200.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
