import 'package:flutter/material.dart';

class SosCntrol extends ChangeNotifier {
  String? districtSelected;
  String? areaSelected;
  void setDistrict(String? selectedDistrict) {
    districtSelected = selectedDistrict;
    notifyListeners();
  }

  void setArea(String? selectedArea) {
    areaSelected = selectedArea;
    notifyListeners();
  }

  void resetArea() {
    areaSelected = null;
    notifyListeners();
  }
}
