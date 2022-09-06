import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool flutterCourse = false;
  bool reactCourse = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
            child: Column(
          children: [
            Text(
              "Please selecet you Course!",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
            Divider(height: 35),
            CheckboxListTile(
                secondary: Icon(
                  Icons.book,
                  color: Colors.amber,
                ),
                subtitle: Text("based on dart programming",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        color: Colors.green[700])),
                title: Text(
                  "Flutter",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                value: flutterCourse,
                onChanged: ((val) {
                  setState(() {
                    flutterCourse = val!;
                  });
                })),
            CheckboxListTile(
              secondary: Icon(
                Icons.book,
                color: Colors.amber,
              ),
              subtitle: Text(
                "based on dart programming",
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.green[700]),
              ),
              title: Text(
                "React",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              value: reactCourse,
              onChanged: ((val) {
                setState(() {
                  reactCourse = val!;
                });
              }),
            ),
            Column(children: [
              if (flutterCourse == true)
                Image(
                    height: 200,
                    width: 350,
                    image: NetworkImage(
                        "https://th.bing.com/th/id/R.a0019d9e77bdaa5d132311a27ca542b7?rik=Gy7jg4fB5kHjWg&pid=ImgRaw&r=0")),
              if (reactCourse == true)
                Image(
                    height: 200,
                    width: 350,
                    image: NetworkImage(
                        "https://th.bing.com/th/id/R.57b508214d06e292b5e6fb5df2f4a089?rik=Mw2ep%2bDIQY%2fyxQ&pid=ImgRaw&r=0"))
            ])
          ],
        )),
      ),
    );
  }
}
