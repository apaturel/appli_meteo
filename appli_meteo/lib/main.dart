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

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  Meteo? meteo = null;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Meteo currentWeather = Meteo(0, "", [], Main(0, 0, 0, 0, 0), null);
  List<Meteo> listHoursWeather = [];

  @override
  void initState() {
    super.initState();
    initialisation();
  }

  void initialisation() async {
    getCityWeather("lyon").then((value) => {
          setState(() {
            currentWeather = value;
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background/background_sunny.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(children: [
          const Spacer(),
          Column(
            children: [
              Text(currentWeather.name!,
                  style: TextStyle(color: Colors.white, fontSize: 30)),
              Text("${(currentWeather.main.temp - 273).toStringAsFixed(0)}°",
                  style: TextStyle(color: Colors.white, fontSize: 30)),
              Text(""),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                    "Max. ${(currentWeather.main.temp_max - 273).toStringAsFixed(0)}°",
                    style: TextStyle(color: Colors.white, fontSize: 30)),
                Text(" | ",
                    style: TextStyle(color: Colors.white, fontSize: 30)),
                Text(
                    "Min. ${(currentWeather.main.temp_min - 273).toStringAsFixed(0)}°",
                    style: TextStyle(color: Colors.white, fontSize: 30))
              ])
            ],
          ),
          const Spacer(),
          const Spacer(),
          Container(
              height: 370,
              width: 350,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 102, 255, 0.25),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: SizedBox(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image(
                            height: 24,
                            width: 24,
                            image: AssetImage("assets/icons/calendar.png")),
                        Text("Météo sur 24h",
                            style: TextStyle(
                                color: Color.fromRGBO(130, 186, 251, 1),
                                fontSize: 16))
                      ],
                    ),
                    Container(
                      height: 1,
                      width: 330,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(130, 186, 251, 100)),
                    ),
                    Row(
                        // children: [
                        //   Text("${weatherInfo.date.hour.toString()}h"),
                        //   Image(
                        //       height: 24,
                        //       width: 24,
                        //       image: AssetImage("assets/icons/sun.png")),
                        //   Text("24°")
                        // ],
                        )
                  ],
                ),
              )),
          Spacer()
        ]),
      ],
    ));

    /*@override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Météo")),
        body: widget.meteo == null
            ? const Center(child: CircularProgressIndicator())
            : Text(widget.meteo!.name ?? "IN LOAD"));
  }*/
  }
}
