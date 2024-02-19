import 'package:flutter/material.dart';

import '../model/onbrd_model.dart';

class OnboardController extends ChangeNotifier {
  List<Map<String, dynamic>> contents = [];

  fetchdata() async {
    contents = OnbContent.contents;
    print("fetch data controller working");
    notifyListeners();
  }
}
