import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: color,
        appBar: AppBar(),
        drawer: Drawer(),
        body: Column(children: [
          Row(
            children: [
              Text(
                "Option 1",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                width: 65.0,
                height: 65.0,
              ),
              Image.network(
                'https://picsum.photos/250?image=9',
                width: 125,
                height: 125,
              ),
              const SizedBox(
                width: 20.0,
                height: 20.0,
              ),
              Column(
                children: [
                  Icon(Icons.ice_skating),
                  Icon(Icons.icecream),
                  Icon(Icons.face),
                  Icon(Icons.abc)
                ],
              )
            ],
          ),
          const SizedBox(
            width: 20.0,
            height: 20.0,
          ),
          Row(
            children: [
              Text(
                "Option 2",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                width: 20.0,
                height: 20.0,
              ),
              Column(
                children: [
                  Icon(Icons.ice_skating),
                  Icon(Icons.icecream),
                  Icon(Icons.face),
                  Icon(Icons.abc)
                ],
              ),
              const SizedBox(
                width: 20.0,
                height: 20.0,
              ),
              Image.network(
                'https://picsum.photos/250?image=9',
                width: 125,
                height: 125,
              ),
              const SizedBox(
                width: 20.0,
                height: 20.0,
              ),
            ],
          ),
          const SizedBox(
            width: 20.0,
            height: 20.0,
          ),
          Row(
            children: [
              Text(
                "Option 3",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                width: 65.0,
                height: 65.0,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.ice_skating),
                      Icon(Icons.icecream),
                      Icon(Icons.face),
                      Icon(Icons.abc)
                    ],
                  ),
                  const SizedBox(
                    width: 3.0,
                    height: 3.0,
                  ),
                  Image.network(
                    'https://picsum.photos/250?image=9',
                    width: 125,
                    height: 125,
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            width: 20.0,
            height: 20.0,
          ),
          Row(
            children: [
              Text(
                "Option 3",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                width: 65.0,
                height: 65.0,
              ),
              Column(
                children: [
                  Image.network(
                    'https://picsum.photos/250?image=9',
                    width: 125,
                    height: 125,
                  ),
                  const SizedBox(
                    width: 3.0,
                    height: 3.0,
                  ),
                  Row(
                    children: [
                      Icon(Icons.ice_skating),
                      Icon(Icons.icecream),
                      Icon(Icons.face),
                      Icon(Icons.abc)
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    this.color = Color.fromARGB(255, 7, 172, 255);
                  });
                },
                icon: Icon(Icons.circle),
                color: Color.fromARGB(255, 7, 172, 255),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    this.color = Colors.white;
                  });
                },
                icon: Icon(Icons.circle),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    this.color = Colors.lightGreen;
                  });
                },
                icon: Icon(Icons.circle),
                color: Colors.lightGreen,
              )
            ],
          )
        ]),
      ),
    );
  }
}
