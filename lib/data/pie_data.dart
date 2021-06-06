import 'package:flutter/material.dart';

class PieData {
  static List<Data> data = [
    Data(name: 'Adequado', percent: 70, color: Colors.green),
    Data(name: 'Não adequado', percent: 30, color: Colors.red),
  ];
}

class Data {
  final String name;

  final double percent;

  final Color color;

  Data({this.name, this.percent, this.color});
}
