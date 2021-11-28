// ignore_for_file: prefer_const_constructors
// @dart=2.9

import 'package:flutter/material.dart';
import 'package:projeto_integrador_i/cadastro.dart';
import 'package:projeto_integrador_i/services.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Column(
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
              padding: const EdgeInsets.only(top: 50.0, bottom: 0),
              child: Text('Qual o seu Projeto?',
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 0, bottom: 100),
              child: Text('Nós estamos aqui para te ajudar!',
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            ),

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
                            builder: (context) => ServiceList(),
                          ));
                    },
                    child: Text('Conheça Nossos Serviços',
                        style: TextStyle(color: Colors.white)),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cadastro(),
                          ));
                    },
                    child: Text('Solicitar Orçamento',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
