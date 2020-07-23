import 'package:flutter/material.dart';

class StateChangeNotifier extends ChangeNotifier {
  StateChangeNotifier() {
    _tabSwitchIndex = 0;
    _legendIndex = -1;
  }

  int _tabSwitchIndex;
  int _legendIndex;

  int get tabSwitchIndex => _tabSwitchIndex;
  int get legendIndex => _legendIndex;

  setTabSwitchIndex(int index) {
    _tabSwitchIndex = index;
    notifyListeners();
  }

  setLegendIndex(int index) {
    _legendIndex = index;
    notifyListeners();
  }
}
