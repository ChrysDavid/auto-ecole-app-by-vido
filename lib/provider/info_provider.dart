import 'package:flutter/material.dart';



class ProgressNotifier extends ChangeNotifier {
  double progress = 0.0;

  void updateProgress(double value) {
    progress = value;
    print(progress);
    notifyListeners();
  }

  
}