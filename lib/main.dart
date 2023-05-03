import 'package:flutter/material.dart';
import 'package:m2pro/m2pro14.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'M2 Mac Book Pro'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text('I want to buy a Mac Book',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const M2Pro14(title: 'M2 Mac Book Pro 14')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 0,
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 0,
                    child: Column(children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset('images/m2pro14.jpg'),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                        child: const Text(
                          'M2 Mac Book Pro 14',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 0,
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 0,
                    child: Column(children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset('images/m2pro13.jpg'),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                        child: const Text(
                          'M2 Mac Book Pro 13',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 0,
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 0,
                    child: Column(children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset('images/m2air.jpg'),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: const Text(
                          'M2 Mac Book Air',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
