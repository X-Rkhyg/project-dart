import 'package:flutter/material.dart';
import 'package:appjadwal/home.dart';

class Selasa extends StatelessWidget {
  const Selasa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.grey[900],
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            title: Text("Jadwal Pelajaran - Selasa"),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          body: ListView(
            children: [
              ListTile(
                title: Text("Rekayasa Perangkat Lunak 2"),
                subtitle: Text("07:00 - 10:00"),
                trailing: Text("Jam 1 - 4"),
              ),
              ListTile(
                title: Text("Istirahat"),
                subtitle: Text("10:00 - 10:15"),
              ),
              ListTile(
                title: Text("Rekaayasa Perangkat Lunak 2"),
                subtitle: Text("10:15 - 11:45"),
                trailing: Text("Jam 5 - 6"),
              ),
              ListTile(
                title: Text("Shalat Dhuhur"),
                subtitle: Text("11:45 - 12:30"),

              ),
              ListTile(
                title: Text("Rekaayasa Perangkat Lunak 2"),
                subtitle: Text("12:30 - 15:05"),
                trailing: Text("Jam 7 - 10"),
              ),
              ListTile(
                title: Text("Shalat Ashar"),
                subtitle: Text("15:05 - 15:30"),
              ),
            ],
          ),
        ));
  }
}
