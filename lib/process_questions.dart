import 'package:appv1/constants.dart';
import 'package:flutter/material.dart';
import 'compliance_questions.dart';

class ProcessQuestions extends StatelessWidget {
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Questionário - Processos'),
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
                            "Existe tratamento de dados de crianças e adolescentes?",
                        hintStyle: TextStyle(color: Colors.white),
                        labelStyle:
                            TextStyle(color: Colors.yellow, fontSize: 12),
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
                            "É disponibilizado ao titular um canal de comunicação para revogar o consentimento realizado?",
                        hintStyle: TextStyle(color: Colors.white),
                        labelStyle:
                            TextStyle(color: Colors.yellow, fontSize: 12),
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
                            "Existe procedimento implementado para eliminação de dados pessoais quando solicitado?",
                        hintStyle: TextStyle(color: Colors.white),
                        labelStyle:
                            TextStyle(color: Colors.yellow, fontSize: 12),
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
                            "Os controles de acesso aos dados estão documentados?",
                        hintStyle: TextStyle(color: Colors.white),
                        labelStyle:
                            TextStyle(color: Colors.yellow, fontSize: 12),
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
                            "Há algum documento que formalize o consentimento do tratamento dos dados do titular?",
                        hintStyle: TextStyle(color: Colors.white),
                        labelStyle:
                            TextStyle(color: Colors.yellow, fontSize: 12),
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
                            "O titular dos dados é informado sobre as alterações na finalidade de uso dos dados coletados?",
                        hintStyle: TextStyle(color: Colors.white),
                        labelStyle:
                            TextStyle(color: Colors.yellow, fontSize: 12),
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
                            "Existem processos relacionados a proteção de dados ou segurança da informação?",
                        hintStyle: TextStyle(color: Colors.white),
                        labelStyle:
                            TextStyle(color: Colors.yellow, fontSize: 12),
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
                            "Foi contratado alguma contultoria ou há competência interna para adequação a LGPD?",
                        hintStyle: TextStyle(color: Colors.white),
                        labelStyle:
                            TextStyle(color: Colors.yellow, fontSize: 12),
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
                            return ComplianceQuestions();
                          }));
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 15, bottom: 10),
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 16),
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
                  ],
                ))
          ],
        ));
  }
}
