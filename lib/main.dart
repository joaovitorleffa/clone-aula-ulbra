import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ambiente Aula',
          style: TextStyle(color: Colors.black54),
        ),
        backgroundColor: Colors.grey[50],
        iconTheme: new IconThemeData(color: Colors.black54),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black54,
              ),
              child: Text(
                'Aula',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Mensagens'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Salas Virtuais',
                  style: TextStyle(fontSize: 20.0),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0, 10.0),
                  child: Text('Período'),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(width: 2.0, color: Colors.grey[300]),
                      borderRadius: BorderRadius.circular(2.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('2020/2'),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey,
                          size: 32.0,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 16.0),
                          child: Card(),
                        ),
                      ]),
                ),
                Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 16.0),
                          child: Card(),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Desenvolvimento de Aplicações Orientado a Objetos',
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
                Text(
                  'Turma: 0157-A - Graduação',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.comment,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.info,
                      color: Colors.grey,
                    ),
                  ],
                ),
                RaisedButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    padding:
                        const EdgeInsets.fromLTRB(120.0, 10.0, 120.0, 10.0),
                    decoration: BoxDecoration(color: Colors.green[700]),
                    child: Text('Entrar na sala'),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class DrawerComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
