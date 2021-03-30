import 'package:appv1/constants.dart';
import 'package:flutter/material.dart';

import 'getCorporateData.dart';

class AcceptTerm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LENC - Termos de Uso'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 30,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/logo_invert.jpg"))),
              ),
            ),
          ),
          Expanded(
            flex: 50,
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Termo de Uso e de Consentimento - LENC:\n\n\n",
                          style: Theme.of(context).textTheme.headline4),
                    ],
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text:
                          "Antes de continuar você deve aceitar os Termos de Uso e Consentimento do questionário:",
                      style: Theme.of(context).textTheme.headline5),
                ),
                FittedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CorporateForm();
                      }));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 30),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          Text(
                            "Concordar e continuar",
                            style: Theme.of(context)
                                .textTheme
                                .button
                                .copyWith(color: Colors.black),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.arrow_forward)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
