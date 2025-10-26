import 'package:flutter/material.dart';

void main() {
  runApp(points_counter());
}

// ignore: camel_case_types, must_be_immutable
class points_counter extends StatefulWidget {
  const points_counter({super.key});

  @override
  State<points_counter> createState() => _points_counterState();
}

// ignore: camel_case_types
class _points_counterState extends State<points_counter> {
  int teamApoint = 0;
  int teamBpoint = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFCA003),
          title: Text("Points Counter"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Column Team A ::
                Column(
                  children: [
                    Text("Team A", style: TextStyle(fontSize: 32)),
                    Text("$teamApoint", style: TextStyle(fontSize: 150)),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamApoint++;
                        });
                        print(teamApoint);
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Color(0xFFFCA003),
                      ),
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamApoint += 2;
                        });
                        print(teamApoint);
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Color(0xFFFCA003),
                      ),
                      child: Text(
                        "Add 2 Point",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamApoint += 3;
                        });
                        print(teamApoint);
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Color(0xFFFCA003),
                      ),
                      child: Text(
                        "Add 3 Point",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                VerticalDivider(color: Colors.grey, thickness: 1),
                // Column Team B ::
                Column(
                  children: [
                    Text("Team B", style: TextStyle(fontSize: 32)),
                    Text("$teamBpoint", style: TextStyle(fontSize: 150)),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBpoint++;
                        });
                        print(teamBpoint);
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Color(0xFFFCA003),
                      ),
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBpoint += 2;
                        });
                        print(teamBpoint);
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Color(0xFFFCA003),
                      ),
                      child: Text(
                        "Add 2 Point",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBpoint += 3;
                        });
                        print(teamBpoint);
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Color(0xFFFCA003),
                      ),
                      child: Text(
                        "Add 3 Point",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // Reset Button :: 
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamApoint = 0;
                  teamBpoint = 0;
                });
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 50),
                backgroundColor: Color(0xFFFCA003),
              ),
              child: Text(
                "Reset",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
