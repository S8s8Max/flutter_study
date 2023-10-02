import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      theme: ThemeData.dark(useMaterial3: true),
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
  bool _flag = false;

  _click() async {
    setState(() {
      _flag = !_flag;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              opacity: _flag ? 0.1 : 1.0,
              duration: const Duration(seconds: 3),
              child: Text(
                "Disappeared Text",
                style: Theme.of(context).textTheme.headlineLarge),
            ),
            AnimatedSize(duration: const Duration(seconds: 3),
              child: SizedBox(
                width: _flag ? 50 : 200,
                height: _flag ? 50: 200,
                child: Container(color: Colors.deepPurpleAccent))),
            AnimatedAlign(
              duration: const Duration(seconds: 3),
              alignment: _flag ? Alignment.topLeft : Alignment.bottomRight,
              child: SizedBox(
                width: 50,
                height: 50,
                child: Container(color: Colors.lightGreen)))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _click,
        child: Icon(FontAwesomeIcons.anchorLock, size: 20),
      ),
    );
  }
}
