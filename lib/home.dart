import 'package:appjadwal/view.dart';
import 'package:flutter/material.dart';
import 'package:appjadwal/senin.dart';
import 'package:appjadwal/selasa.dart';
import 'package:appjadwal/carousel.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imglist = [
  'https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg?w=1380&t=st=1699238412~exp=1699239012~hmac=75e2d00d2b55b34ba02ed6cc46fe9ea8d8a0aeb7857db3e101c2e1d6a3b10037'
];

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
          backgroundColor: Colors.grey[900],
          title: const Text('Dashboard'),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Senin()));
              },
              borderRadius: BorderRadius.circular(4),
              splashColor: Colors.black,
              child: Center(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.school,
                        size: 70,
                        color: Colors.cyan,
                      ),
                      Text(
                        "Senin",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Selasa()));
              },
              splashColor: Colors.black,
              child: Center(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.school,
                        size: 70,
                        color: Colors.cyan,
                      ),
                      Text(
                        "Selasa",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.black,
              child: Center(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.school,
                        size: 70,
                        color: Colors.cyan,
                      ),
                      Text(
                        "Rabu",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.black,
              child: Center(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.school,
                        size: 70,
                        color: Colors.cyan,
                      ),
                      Text(
                        "Kamis",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.black,
              child: Center(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.school,
                        size: 70,
                        color: Colors.cyan,
                      ),
                      Text(
                        "Jumat",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Carousel()));
              },
              splashColor: Colors.black,
              child: Center(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.school,
                        size: 70,
                        color: Colors.cyan,
                      ),
                      Text(
                        "Carousel",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => WebViewScreen()));
              },
              splashColor: Colors.black,
              child: Center(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.school,
                        size: 70,
                        color: Colors.cyan,
                      ),
                      Text(
                        "WebView",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
