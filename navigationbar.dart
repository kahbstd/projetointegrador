// ignore_for_file: prefer_const_constructors
// @dart=2.9
import 'package:flutter/material.dart';
import 'package:projeto_integrador_i/contact.dart';
import 'home.dart';
import 'services.dart';

class WebApp extends StatelessWidget {
  const WebApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            TextButton(
              style: TextButton.styleFrom(
                  textStyle: TextStyle(
                color: Color(0xFF263238),
                fontSize: 18,
                fontWeight: FontWeight.w100,
              )),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ServiceList()),
                );
              },
              child: Text(
                'Nossos Serviços',
                style: TextStyle(color: Color(0xFF263238)),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: TextButton.styleFrom(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                    ),
                    backgroundColor: Color(0xFF0277BD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactUs()),
                  );
                },
                child: Text(
                  'Fale Conosco',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        // ignore: prefer_const_literals_to_create_immutables
        children: [Body()],
      ),
    );
  }
}
