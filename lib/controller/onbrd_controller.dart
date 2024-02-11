
import 'package:flutter/material.dart';
import '../model/onbrd_model.dart';

class OnboardController extends ChangeNotifier {
  late List<Map<String,dynamic>> contents;
  late OnboardContent onboardContent;

  fetchdata() async {
    //  contents = onboardContent.onbContents;
    print("fetch data controller working");
    notifyListeners();
  }
}
