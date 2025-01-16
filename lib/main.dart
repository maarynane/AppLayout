import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Programa Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Programa Layout'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Layout Superior
            const Text('Layout Superior'),
            const SizedBox(height: 20.0),

            // Blue container
            Container(
              width: 300.0,
              height: 400.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 18.0,
                    offset: Offset(5.0, 5.0),
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  'Meu Aplicativo',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            // Layout Inferior
            const SizedBox(height: 20.0),
            const Text('Layout Inferior'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // Add functionality here if needed
        child: const Icon(Icons.add),
      ),
    );
  }
}