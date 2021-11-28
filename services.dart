// ignore_for_file: prefer_const_constructors
// @dart=2.9
import 'package:flutter/material.dart';

import 'navigationbar.dart';

// ignore: use_key_in_widget_constructors
class ServiceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //config do Logo

          SizedBox(child: Image.asset("logo.png"), width: 350, height: 150),

          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Text(
              "Soluções em T.I.",
              style: TextStyle(fontSize: 20.0, color: Colors.grey),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Nossos Serviços',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 23),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    children: [
                      Card(
                        child: Column(
                          children: [
                            ListTile(
                              leading: SizedBox(
                                child: Image.asset('redes.png'),
                              ),
                              title: Text('Instalação de Redes'),
                              subtitle: Text(
                                  'Fazemos a instalação, configuração e reparos necessários para a rede do seu projeto!'),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        elevation: 3,
                        child: Column(
                          children: [
                            ListTile(
                              leading: SizedBox(
                                child: Image.asset('formatar.png'),
                              ),
                              title: Text('Formatação de Computadores'),
                              subtitle: Text(
                                  'Computador muito lento? Nós formatamos para você!'),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        elevation: 3,
                        child: Column(
                          children: [
                            ListTile(
                              leading: SizedBox(
                                child: Image.asset('cftv.png'),
                              ),
                              title: Text('Instalação e Reparo de CFTV'),
                              subtitle: Text(
                                  'Sua família muito mais segura! Deixamos o monitoramento em perfeito estado!'),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        elevation: 3,
                        child: Column(
                          children: [
                            ListTile(
                              leading: SizedBox(
                                child: Image.asset('instalar.png'),
                              ),
                              title: Text('Instalação de Softwares'),
                              subtitle: Text(
                                  'Sabe aquele programa que você precisa mas não tem a menor ideia de como instalar? Nós prepamos tudo pra você!'),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: SizedBox(
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WebApp()));
                            },
                            child: const Text('Voltar para Início',
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
