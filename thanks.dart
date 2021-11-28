// ignore_for_file: prefer_const_constructors
// @dart=2.9

import 'package:flutter/material.dart';
import 'package:projeto_integrador_i/navigationbar.dart';

class ThanksPage extends StatefulWidget {
  const ThanksPage({Key key}) : super(key: key);

  @override
  State<ThanksPage> createState() => _ThanksPageState();
}

class _ThanksPageState extends State<ThanksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
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
              child: Text('Agradecemos o seu contato!',
                  style:
                      TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 0, bottom: 100),
              child: Text(
                  'Um técnico será designado para o seu atendimento em até 4 horas.',
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal)),
            ),

            // Config dos botões

            SizedBox(
              width: 260,
              height: 64,
              child: TextButton(
                style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w100,
                    ),
                    backgroundColor: const Color(0xFF0277BD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WebApp()));
                },
                child: const Text('Voltar para Início',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
