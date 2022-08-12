//Demo Trabalhando com mudanças no Text Field
// 1 -  Onchanged
// 2 - TextEditing Controller

import 'package:flutter/material.dart';

class Demo2 extends StatefulWidget {
  const Demo2({Key? key}) : super(key: key);

  @override
  State<Demo2> createState() => _Demo2State();
}

class _Demo2State extends State<Demo2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo 2')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
                hintText: 'Digite seu email',
                label: Text("Email"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.key),
                suffixIcon: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {},
                ),
                border: OutlineInputBorder(),
                hintText: 'Digite seu senha',
                label: Text("Senha"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
                onPressed: () {
                  print('Enviando email..');
                  print('Enviando senha..');
                },
                child: Text('Enviar')),
          )
        ],
      ),
    );
  }
}
