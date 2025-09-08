import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:women_safety/utils/items.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:women_safety/widgets/webview.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        items:List.generate(imageSliders.length, (index)=>InkWell(
          onTap:() {
            Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => WebViewScreen(
        url: urls[index],
        title: articleTitle[index],
      ),
    ),
  );
            
          }, 
          child: Card(
            margin: EdgeInsets.all(10),
            color: Colors.white,
            elevation: 8,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(
                children: [
          // Image
          Image.network(
            imageSliders[index],
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200,
          ),
          // Gradient overlay (optional, for better text visibility)
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black.withOpacity(0.4), Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          // Text
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
             articleTitle[index],
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
                ],
              ),
            ),
          ),
        )
) ,
        options: CarouselOptions(
        
        height: 200,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 2.0,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
         
        )

      ),
    );
  }
}