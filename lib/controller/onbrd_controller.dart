import 'package:flutter/material.dart';
import '../model/onbrd_model.dart';

class OnboardController extends ChangeNotifier {
  late List contents;
  late OnboardContent _onboardContent;

  fetchdata() async {
    contents = _onboardContent.onbContents;
    print("fetch data controller working");
    notifyListeners();
  }
}
