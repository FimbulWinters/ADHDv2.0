import 'package:flutter/material.dart';

class EditDayFormProvider extends ChangeNotifier {
  String? activityName;
  String? activityType;
  String? duration;

  void updateActivityName(String? value) {
    activityName = value;
    notifyListeners();

  }

  void updateActivityType(String? value) {
    activityType = value;
    notifyListeners();
  }

  void updateDuration(String? value) {
    duration = value;
    notifyListeners();
  }

  bool get isValid {
    return activityName != null && activityType != null && duration != null;
  }
}
