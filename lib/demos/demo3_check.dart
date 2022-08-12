//Demo Checkbox
import 'package:flutter/material.dart';

class Demo3CheckBox extends StatefulWidget {
  const Demo3CheckBox({Key? key}) : super(key: key);

  @override
  State<Demo3CheckBox> createState() => _Demo3CheckBoxState();
}

class _Demo3CheckBoxState extends State<Demo3CheckBox> {
  bool? _selecionado = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo 3 - Checkbox')),
      body: Row(
        children: [
          Checkbox(
            value: _selecionado,
            onChanged: (bool? value) {
              setState(() {
                _selecionado = value;
              });
            },
          ),
          Text('Declaro que li e estou de acordo')
        ],
      ),
    );
  }
}
