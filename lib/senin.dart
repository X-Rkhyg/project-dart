import 'package:flutter/material.dart';
import 'package:appjadwal/home.dart';

class Senin extends StatelessWidget {
  const Senin({Key? key}) : super(key: key);

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
            title: Text("Jadwal Pelajaran - Senin"),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          body: ListView(
            children: [
              ListTile(
                title: Text("Perwalian"),
                subtitle: Text("07:00 - 08:00"),
                trailing: Text("Jam 1"),
              ),
              ListTile(
                title: Text("PKK/Pemrograman Mobile"),
                subtitle: Text("08:00 - 10:00"),
                trailing: Text("Jam 2-4"),
              ),
              ListTile(
                title: Text("Istirahat"),
                subtitle: Text("10:00 - 10:15"),
              ),
              ListTile(
                title: Text("PKK/Pemrograman Mobile"),
                subtitle: Text("10:15 - 11:45"),
                trailing: Text("Jam 5 - 6"),
              ),
              ListTile(
                title: Text("Shalat Dhuhur"),
                subtitle: Text("11:45 - 12:30"),

              ),
              ListTile(
                title: Text("PKK/Pemrograman Mobile"),
                subtitle: Text("12:30 - 13:10"),
                trailing: Text("Jam 8"),
              ),
              ListTile(
                title: Text("Rekayasa Perangkat Lunak 2"),
                subtitle: Text("13:10 - 15:05"),
                trailing: Text("Jam 9 - 11"),
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
