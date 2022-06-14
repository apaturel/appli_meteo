import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
          Spacer(),
          Column(
            children: [
              Text("Lyon", style: TextStyle(color: Colors.white, fontSize: 30)),
              Text("26°", style: TextStyle(color: Colors.white, fontSize: 30)),
              Text(""),
              Text("Belles éclaircies",
                  style: TextStyle(color: Colors.white, fontSize: 30)),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("Max. 25°",
                    style: TextStyle(color: Colors.white, fontSize: 30)),
                Text(" | ",
                    style: TextStyle(color: Colors.white, fontSize: 30)),
                Text("Min. 12°",
                    style: TextStyle(color: Colors.white, fontSize: 30))
              ])
            ],
          ),
          Spacer(),
          Row(
            children: [
              Spacer(),
              Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(0, 102, 255, 0.25),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: SizedBox(
                    height: 100,
                    width: 70,
                    child: Column(children: [
                      Spacer(),
                      Text("Lun", style: TextStyle(color: Colors.white)),
                      Text("25°", style: TextStyle(color: Colors.white)),
                      Image(
                        height: 40,
                        width: 40,
                        image: AssetImage("assets/icons/sun.png"),
                      ),
                      Spacer()
                    ]),
                  )),
              Spacer(),
              Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(0, 102, 255, 0.25),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: SizedBox(
                    height: 100,
                    width: 70,
                    child: Column(children: [
                      Spacer(),
                      Text("Lun", style: TextStyle(color: Colors.white)),
                      Text("25°", style: TextStyle(color: Colors.white)),
                      Image(
                        height: 40,
                        width: 40,
                        image: AssetImage("assets/icons/sun.png"),
                      ),
                      Spacer()
                    ]),
                  )),
              Spacer(),
              Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(0, 102, 255, 0.25),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: SizedBox(
                    height: 100,
                    width: 70,
                    child: Column(children: [
                      Spacer(),
                      Text("Lun", style: TextStyle(color: Colors.white)),
                      Text("25°", style: TextStyle(color: Colors.white)),
                      Image(
                        height: 40,
                        width: 40,
                        image: AssetImage("assets/icons/sun.png"),
                      ),
                      Spacer()
                    ]),
                  )),
              Spacer(),
              Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(0, 102, 255, 0.25),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: SizedBox(
                    height: 100,
                    width: 70,
                    child: Column(children: [
                      Spacer(),
                      Text("Lun", style: TextStyle(color: Colors.white)),
                      Text("25°", style: TextStyle(color: Colors.white)),
                      Image(
                        height: 40,
                        width: 40,
                        image: AssetImage("assets/icons/sun.png"),
                      ),
                      Spacer()
                    ]),
                  )),
              Spacer(),
              Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(0, 102, 255, 0.25),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: SizedBox(
                    height: 100,
                    width: 70,
                    child: Column(children: [
                      Spacer(),
                      Text("Lun", style: TextStyle(color: Colors.white)),
                      Text("25°", style: TextStyle(color: Colors.white)),
                      Image(
                        height: 40,
                        width: 40,
                        image: AssetImage("assets/icons/sun.png"),
                      ),
                      Spacer()
                    ]),
                  )),
              Spacer(),
            ],
          ),
          Spacer(),
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
                      children: [
                        Text("8h"),
                        Image(
                            height: 24,
                            width: 24,
                            image: AssetImage("assets/icons/sun.png")),
                        Text("24°")
                      ],
                    )
                  ],
                ),
              )),
          Spacer()
        ]),
      ],
    ));
  }
}
//Le chibron