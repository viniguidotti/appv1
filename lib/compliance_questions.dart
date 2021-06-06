import 'package:flutter/material.dart';
import 'constants.dart';
import 'technology_questions.dart';

class ComplianceQuestions extends StatelessWidget {
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Questionário - Compliance'),
      ),
      body: Column(
        children: [
          Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Sim ou Não",
                      labelText:
                          "Existe contrato com terceiros para compartilhamento de dados pessoais?",
                      hintStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(color: Colors.yellow, fontSize: 12),
                      border: OutlineInputBorder(),
                      fillColor: Colors.black12,
                      filled: true,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Sim ou Não",
                      labelText:
                          "Sua empresa é regulamentada por alguma entidade pública?",
                      hintStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(color: Colors.yellow, fontSize: 12),
                      border: OutlineInputBorder(),
                      fillColor: Colors.black12,
                      filled: true,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Sim ou Não",
                      labelText:
                          "Existe transferência internacional de dados pessoais?",
                      hintStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(color: Colors.yellow, fontSize: 12),
                      border: OutlineInputBorder(),
                      fillColor: Colors.black12,
                      filled: true,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Sim ou Não",
                      labelText:
                          "Existem controles sobre a confidencialidade dos dados e segurança da informação?",
                      hintStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(color: Colors.yellow, fontSize: 12),
                      border: OutlineInputBorder(),
                      fillColor: Colors.black12,
                      filled: true,
                    ),
                  ),
                  FittedBox(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return TechnologyQuestions();
                        }));
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 15, bottom: 10),
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Text(
                              "Salvar e continuar",
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
                    height: 10,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
