import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Expansion Tile Example'),
        ),
        body: const MyExpansionTile(),
      ),
    );
  }
}

class MyExpansionTile extends StatelessWidget {
  const MyExpansionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: ExpansionTile(
            leading: Icon(Icons.info),
            title: Text('Expansion Tile 1'),
            subtitle: Text('Tap to expand'),
            children: <Widget>[
              Container(
                color: Colors.lightGreenAccent,
                child: ListTile(
                  title: Text('Item 1'),
                  subtitle: Text('Details of Item 1'),
                ),
              ),
              ListTile(
                title: Text('Item 2'),
                subtitle: Text('Details of Item 2'),
              ),
            ],
          ),
        ),
        Card(
          child: ExpansionTile(
            leading: Icon(Icons.info),
            title: Text('Expansion Tile 2'),
            subtitle: Text('Tap to expand'),
            children: <Widget>[
              ListTile(
                title: Text('Item 3'),
                subtitle: Text('Details of Item 3'),
              ),
              ListTile(
                title: Text('Item 4'),
                subtitle: Text('Details of Item 4'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
