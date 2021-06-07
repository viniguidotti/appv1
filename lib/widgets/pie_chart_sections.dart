import 'package:appv1/data/pie_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

List<PieChartSectionData> getSectionsProcess(int touchedIndex) =>
    PieDataProcess.data
        .asMap()
        .map<int, PieChartSectionData>((index, data) {
          final isTouched = index == touchedIndex;
          final double fontSize = isTouched ? 25 : 16;
          final double radius = isTouched ? 100 : 80;

          final value = PieChartSectionData(
            color: data.color,
            value: data.percent,
            title: '${data.percent}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
            ),
          );

          return MapEntry(index, value);
        })
        .values
        .toList();

List<PieChartSectionData> getSectionsCompliance(int touchedIndex) =>
    PieDataCompliance.data
        .asMap()
        .map<int, PieChartSectionData>((index, data) {
          final isTouched = index == touchedIndex;
          final double fontSize = isTouched ? 25 : 16;
          final double radius = isTouched ? 100 : 80;

          final value = PieChartSectionData(
            color: data.color,
            value: data.percent,
            title: '${data.percent}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
            ),
          );

          return MapEntry(index, value);
        })
        .values
        .toList();

List<PieChartSectionData> getSectionsTechnology(int touchedIndex) =>
    PieDataTechnology.data
        .asMap()
        .map<int, PieChartSectionData>((index, data) {
          final isTouched = index == touchedIndex;
          final double fontSize = isTouched ? 25 : 16;
          final double radius = isTouched ? 100 : 80;

          final value = PieChartSectionData(
            color: data.color,
            value: data.percent,
            title: '${data.percent}%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: const Color(0xffffffff),
            ),
          );

          return MapEntry(index, value);
        })
        .values
        .toList();
