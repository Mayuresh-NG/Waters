
import 'text.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MaterialApp(
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF9CC3D5),
        body: ListView(
          children: [
            Stack(
              children: [
                Container(

                  padding:const EdgeInsets.symmetric(vertical: 250),
                  height:700 ,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.horizontal(left: Radius.circular(65.0),right: Radius.circular(65.0))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                              padding:const EdgeInsets.symmetric(vertical: 20 ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(50 , 50),
                                textStyle: const TextStyle(fontSize:20),
                                primary: Colors.black,
                                onPrimary: Colors.white,
                              ),
                              child: const Text('Open camera' ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Cam()),
                                );
                              },
                            ),
                          ),
                          Container(
                              padding:const EdgeInsets.symmetric(vertical: 20),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size(50 , 50),
                                textStyle: const TextStyle(fontSize:20),
                                primary: Colors.green,
                                onPrimary: Colors.white,
                              ),
                              child: const Text('Open map'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const Map()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:const EdgeInsets.symmetric(horizontal: 50.0),
                  height:80 ,
                  decoration:const BoxDecoration(
                      color: Color(0xFF0063B2),
                  ),
                  child: Row(
                    children: const [
                      Text("Water Quality Checker", style : titleText)
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
    );
  }
}

class Cam extends StatelessWidget {
  const Cam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class Map extends StatelessWidget {
  const Map({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

