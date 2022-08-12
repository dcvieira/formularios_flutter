import 'package:flutter/material.dart';
import 'package:formularios_flutter/demos/demo1.dart';
import 'package:formularios_flutter/demos/demo2.dart';
import 'package:formularios_flutter/demos/demo3_check.dart';
import 'package:formularios_flutter/demos/demo3_dropdown.dart';
import 'package:formularios_flutter/demos/demo3_radio.dart';
import 'package:formularios_flutter/demos/demo4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Forms Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Forms Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Text('1'),
              ),
              trailing: Icon(Icons.chevron_right),
              title: Text('Demo 1'),
              subtitle: Text("Criando e estilizando um TextField"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return Demo1();
                  }),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Text('2'),
              ),
              trailing: Icon(Icons.chevron_right),
              title: Text('Demo 2'),
              subtitle: Text("Trabalhando com mudanças no Text Field"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return Demo2();
                  }),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Text('3'),
              ),
              trailing: Icon(Icons.chevron_right),
              title: Text('Demo 3'),
              subtitle: Text("Checkbox"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return Demo3CheckBox();
                  }),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Text('3'),
              ),
              trailing: Icon(Icons.chevron_right),
              title: Text('Demo 3'),
              subtitle: Text("Radio Button"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return Demo3Radio();
                  }),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Text('3'),
              ),
              trailing: Icon(Icons.chevron_right),
              title: Text('Demo 3'),
              subtitle: Text("Drop Down Button"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return Demo3DropDown();
                  }),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Text('4'),
              ),
              trailing: Icon(Icons.chevron_right),
              title: Text('Demo 4'),
              subtitle: Text("Form and FormField"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return Demo4();
                  }),
                );
              },
            ),
          ],
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
