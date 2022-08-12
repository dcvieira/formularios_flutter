//Demo Radio Button
import 'package:flutter/material.dart';

class Demo3DropDown extends StatefulWidget {
  const Demo3DropDown({Key? key}) : super(key: key);

  @override
  State<Demo3DropDown> createState() => _Demo3DropDownState();
}

class _Demo3DropDownState extends State<Demo3DropDown> {
  String? _dropdownValue = 'Opção 1';
  final _opcoes = ['Opção 1', 'Opção 2', 'Opção 3', 'Opção 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo 3 - DropDownButton')),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Center(
          child: DropdownButton<String>(
            value: _dropdownValue,
            items: _opcoes.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                _dropdownValue = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
