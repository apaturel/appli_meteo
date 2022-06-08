import 'package:flutter/material.dart';
import 'package:appli_meteo/models/meteo.dart';
import 'package:appli_meteo/services/user_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Fluutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  Meteo? meteo = null;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    initialisation();
  }

  void initialisation() async {
    getCityWeather("paris").then((value) => {
          setState(() {
            widget.meteo = value;
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Météo")),
        body: widget.meteo == null
            ? const Center(child: CircularProgressIndicator())
            : Text(widget.meteo!.name ?? "IN LOAD"));
  }
}
