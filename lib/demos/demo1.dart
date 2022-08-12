//Demo Criando e Estilizando um TextField
// 1 -  Criando um textField
// 2 - Hint text e label
// 3 - Inputdecoration - OuttlineInputBorder UnderlineInputBorder
// 4 - prefixIcon
// 5 - suffixIcon
import 'package:flutter/material.dart';

class Demo1 extends StatefulWidget {
  const Demo1({Key? key}) : super(key: key);

  @override
  State<Demo1> createState() => _Demo1State();
}

class _Demo1State extends State<Demo1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo 1')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [],
      ),
    );
  }
}
