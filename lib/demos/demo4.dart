import 'package:flutter/material.dart';

class Demo4 extends StatefulWidget {
  const Demo4({Key? key}) : super(key: key);

  @override
  State<Demo4> createState() => _Demo4State();
}

class _Demo4State extends State<Demo4> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo 4 - Forms')),
      body: ListView(
        padding: EdgeInsets.all(32),
        children: <Widget>[
          buildNome(),
          SizedBox(
            height: 24,
          ),
          buildEmail(),
          SizedBox(
            height: 24,
          ),
          buildPassword(),
          SizedBox(
            height: 24,
          ),
          ElevatedButton(
            onPressed: () {
              var message = 'Cadastro realizado com sucesso!';
              final snackBar = SnackBar(
                content: Text(message),
                backgroundColor: Colors.green,
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: const Text('Submit'),
          )
        ],
      ),
    );
  }

  Widget buildNome() => TextField(
        decoration: InputDecoration(
          hintText: 'Digite seu nome',
          labelText: 'Nome',
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.people),
        ),
      );

  Widget buildEmail() => TextField(
        decoration: InputDecoration(
          hintText: 'name@example.com',
          labelText: 'E-mail',
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.email),
        ),
        keyboardType: TextInputType.emailAddress,
      );

  Widget buildPassword() => TextField(
        decoration: InputDecoration(
          hintText: 'Digite sua senha',
          labelText: 'Senha',
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.key),
        ),
      );
}
