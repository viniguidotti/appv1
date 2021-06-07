import 'package:appv1/widgets/pie_chart_sections.dart';
import 'package:appv1/widgets/indicators_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:appv1/constants.dart';
import 'technology_graphic.dart';

class ComplianceGraphic extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GraphicState();
}

class GraphicState extends State {
  int touchedIndex;

  @override
  Widget build(BuildContext context) => Card(
        color: kBackgroundColor,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 90,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Gráfico enquadramento - Compliance",
                      style: Theme.of(context).textTheme.headline5),
                ],
              ),
            ),
            Expanded(
              child: PieChart(
                PieChartData(
                  borderData: FlBorderData(show: false),
                  sectionsSpace: 2,
                  centerSpaceRadius: 80,
                  sections: getSectionsCompliance(touchedIndex),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: IndicatorsWidgetCompliance(),
                ),
              ],
            ),
            SizedBox(
              height: 90,
            ),
            FittedBox(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return TechnologyGraphic();
                  }));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 15, bottom: 10),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Text(
                        "Próximo",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.black),
                      ),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      );
}
