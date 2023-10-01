import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      appBar: AppBar(
        title: Row(
          children: const [
            Icon(
              Icons.anchor,
              color: Colors.teal,
              size: 40.0,
            ),
            Text("Anchor!"),
          ],
        ),
      ),
      body: Column(children: [
        const Text("HelloWorld."),
        const Text("Big Innovation!"),
        TextButton(
            onPressed: () => {print("You hit the Button.")},
            child: const Text("Text Button"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(
              Icons.favorite,
              color: Colors.amber,
              size: 54.0,
            ),
            Icon(
              Icons.gamepad,
              color: Colors.indigoAccent,
              size: 30.0,
            ),
            Icon(
              Icons.beach_access_sharp,
              color: Colors.green,
              size: 36.0,
            ),
          ],
        )
      ],),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          print("You pushed, right?")
        },
        child: const Icon(Icons.deblur),
      ),
      drawer: const Drawer(
        child: Center(
          child: Text("Drawer"),
        ),
      ),
      endDrawer: const Drawer(
        child: Center(
          child: Text("EndDrawer"),
        ),
      ),
    );
  }
}
