import 'package:flutter/material.dart';

class PieDataProcess {
  static List<Data> data = [
    Data(name: 'Adequado', percent: 62.5, color: Colors.green),
    Data(name: 'Não adequado', percent: 37.5, color: Colors.red),
  ];
}

class PieDataCompliance {
  static List<Data> data = [
    Data(name: 'Adequado', percent: 50, color: Colors.green),
    Data(name: 'Não adequado', percent: 50, color: Colors.red),
  ];
}

class PieDataTechnology {
  static List<Data> data = [
    Data(name: 'Adequado', percent: 75, color: Colors.green),
    Data(name: 'Não adequado', percent: 25, color: Colors.red),
  ];
}

class Data {
  final String name;

  final double percent;

  final Color color;

  Data({this.name, this.percent, this.color});
}
