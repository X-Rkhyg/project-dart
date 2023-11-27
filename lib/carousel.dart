import 'package:flutter/material.dart';
import 'package:appjadwal/home.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imglist = [
  'https://images.pexels.com/photos/556414/pexels-photo-556414.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.pexels.com/photos/541484/sun-flower-blossom-bloom-pollen-541484.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.pexels.com/photos/534285/pexels-photo-534285.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
];

class Carousel extends StatelessWidget {
  const Carousel({Key? key}) : super(key: key);

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
            title: Text("Carousel"),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          // carousel
          body: Container(
            child: CarouselSlider(
              options: CarouselOptions(
                height: 700.0,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
              ),
              items: imglist
                  .map((item) => Container(
                        child: Center(
                            child: Image.network(item,
                                fit: BoxFit.cover, width: 1000)),
                      ))
                  .toList(),
            ),
          ),
        ));
  }
}
