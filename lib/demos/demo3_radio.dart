//Demo Radio Button
import 'package:flutter/material.dart';

class Demo3Radio extends StatefulWidget {
  const Demo3Radio({Key? key}) : super(key: key);

  @override
  State<Demo3Radio> createState() => _Demo3RadioState();
}

class _Demo3RadioState extends State<Demo3Radio> {
  int? _opcaoSelecionada = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo 3 - RadioButton')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text("Opção 1"),
            leading: Radio<int>(
              value: 1,
              groupValue: _opcaoSelecionada,
              onChanged: (int? value) {
                setState(() {
                  _opcaoSelecionada = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text("Opção 2"),
            leading: Radio<int>(
              value: 2,
              groupValue: _opcaoSelecionada,
              onChanged: (int? value) {
                setState(() {
                  _opcaoSelecionada = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
