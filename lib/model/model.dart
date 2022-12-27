import 'package:flutter/material.dart';

class Person extends ChangeNotifier {
  String? name;
  int? age;

  Person({
    this.name,
    this.age,
  });

  void incrementAge() {
    this.age = (this.age ?? 0) + 1;
    notifyListeners();
  }

  void decrementAge() {
    this.age = (this.age ?? 0) - 1;
    notifyListeners();
  }
}
