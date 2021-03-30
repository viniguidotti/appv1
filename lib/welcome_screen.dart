import 'package:appv1/constants.dart';
import 'package:flutter/material.dart';
import 'accept_term.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LENC - Framework de Conformidade LGPD'),
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
                          text: "LENC - Framework de Conformidade LGPD\n\n",
                          style: Theme.of(context).textTheme.headline4),
                      TextSpan(
                          text:
                              "Seja bem-vindo ao Framework de Teste de Conformidade LGPD\n\n",
                          style: Theme.of(context).textTheme.headline5),
                    ],
                  ),
                ),
                FittedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AcceptTerm();
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
                            "Começar o teste",
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
          )
        ],
      ),
    );
  }
}
