import 'package:flutter/material.dart';

import 'constants.dart';

class CorporateForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<CorporateForm> {
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LENC - Coleta de Dados'),
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
          SizedBox(
            height: 16,
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Seu Nome",
                    labelText: "Nome",
                    hintStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color: Colors.yellow, fontSize: 24),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person_pin_circle),
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
                    hintText: "Seu E-mail",
                    labelText: "E-mail",
                    hintStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color: Colors.yellow, fontSize: 24),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                    fillColor: Colors.black12,
                    filled: true,
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Seu Telefone",
                    labelText: "Telefone",
                    hintStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color: Colors.yellow, fontSize: 24),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                    fillColor: Colors.black12,
                    filled: true,
                  ),
                  keyboardType: TextInputType.phone,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Nome da Empresa",
                    labelText: "Empresa",
                    hintStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color: Colors.yellow, fontSize: 24),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.apartment),
                    fillColor: Colors.black12,
                    filled: true,
                  ),
                  keyboardType: TextInputType.name,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Setor da Empresa",
                    labelText: "Setor Empresarial",
                    hintStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color: Colors.yellow, fontSize: 24),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.card_travel),
                    fillColor: Colors.black12,
                    filled: true,
                  ),
                  keyboardType: TextInputType.name,
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
                SizedBox(width: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
