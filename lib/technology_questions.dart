import 'package:flutter/material.dart';
import 'constants.dart';
import 'process_graphic.dart';

class TechnologyQuestions extends StatelessWidget {
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Questionário - Tecnologia'),
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
                        "Existe procedimentos para anonimização de dados?",
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
                        "A sua empresa sofreu algum incidente relacionado a proteção de dados?",
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
                        "Existem tecnologias relacionadas a segurança da informação? (Ex: Firewall, antivírus e WAF)",
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
                        "As aplicações já estão adequadas aos princípios de tratamento de dados pessoais??",
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
                FittedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ProcessGraphic();
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
