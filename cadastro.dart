// ignore_for_file: prefer_const_constructors
// @dart=2.9

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projeto_integrador_i/navigationbar.dart';
import 'package:projeto_integrador_i/thanks.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameTextController = TextEditingController();
  final TextEditingController _phoneTextController = TextEditingController();
  final TextEditingController _projectTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //config do Logo

          SizedBox(child: Image.asset("logo.png"), width: 350, height: 150),

          Text(
            "Soluções em T.I.",
            style: TextStyle(fontSize: 24.0, color: Colors.grey),
          ),

          //config do texto abaixo do logo

          Padding(
            padding: const EdgeInsets.only(top: 0.0, bottom: 30),
            child: Text('Preencha o formulário abaixo:',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          ),

          //config dos formulários

          SizedBox(
              width: 300,
              height: 250,
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Formulário Nome

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: _nameTextController,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2.0),
                          ),
                          labelText: 'Nome Completo',
                        ),
                      ),
                    ),

                    // Formulário Telefone

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: _phoneTextController,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2.0),
                            ),
                            labelText: 'Melhor Número para Contato',
                            hintText: '(DDD) + Telefone'),
                        keyboardType: TextInputType.number,
                      ),
                    ),

                    // Formulário do Projeto

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: _projectTextController,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2.0),
                            ),
                            labelText: 'Nos conte sobre o seu Projeto',
                            hintText: 'Eu preciso que ...'),
                      ),
                    ),
                  ],
                ),
              )),

          // Config dos botões

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Botão Nossos Serviços

              SizedBox(
                width: 260,
                height: 64,
                child: TextButton(
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w100,
                      ),
                      backgroundColor: Color(0xFF0277BD),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WebApp(),
                        ));
                  },
                  child: Text('Voltar', style: TextStyle(color: Colors.white)),
                ),
              ),

              // Caixa de espaço entre botões

              SizedBox(width: 50),

              //Botão Solicitar Orçamento

              SizedBox(
                width: 260,
                height: 64,
                child: TextButton(
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w100,
                      ),
                      backgroundColor: Color(0xFF0277BD),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                  onPressed: () {
                    Firebase.initializeApp();
                    var collection =
                        FirebaseFirestore.instance.collection('cadastro');
                    collection.doc().set({
                      'nome': _nameTextController,
                      'contato': _phoneTextController,
                      'projeto': _projectTextController,
                    }).then((value) => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThanksPage(),
                        )));
                  },
                  child: Text('Enviar', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
