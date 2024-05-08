import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _userspic = prefs.getString('ff_userspic') ?? _userspic;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _userspic = 'https://images.app.goo.gl/GdZpFV6TSNvcmHCU8';
  String get userspic => _userspic;
  set userspic(String value) {
    _userspic = value;
    prefs.setString('ff_userspic', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
