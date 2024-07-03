import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
            leading: const Icon(Icons.info),
            title: const Text('Expansion Tile 1'),
            subtitle: const Text('Tap to expand'),
            children: <Widget>[
              Container(
                color: Colors.lightGreenAccent,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text('Item 1'),
                      subtitle: Text('Details of Item 1'),
                    ),
                    Lottie.asset(
                      'assets/polite.json',
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.lightBlueAccent,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text('Item 2'),
                      subtitle: Text('Details of Item 2'),
                    ),
                    Lottie.asset(
                      'assets/polite.json',
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Card(
          child: ExpansionTile(
            leading: const Icon(Icons.info),
            title: const Text('Expansion Tile 2'),
            subtitle: const Text('Tap to expand'),
            children: <Widget>[
              Container(
                color: Colors.lightBlueAccent,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text('Item 3'),
                      subtitle: Text('Details of Item 3'),
                    ),
                    Lottie.asset(
                      'assets/polite.json',
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.lightBlueAccent,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text('Item 4'),
                      subtitle: Text('Details of Item 4'),
                    ),
                    Lottie.asset(
                      'assets/polite.json',
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
