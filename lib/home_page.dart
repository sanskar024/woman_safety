import 'dart:math';

import 'package:flutter/material.dart';
import 'package:women_safety/widgets/appbar.dart';
import 'package:women_safety/utils/items.dart';
import 'package:women_safety/widgets/carousel.dart';
import 'package:women_safety/widgets/EmergencyWidgets/emergencywidgets.dart';
import 'package:women_safety/widgets/Lifesave/lifesave.dart'; 
import 'package:women_safety/widgets/Safehome.dart/safeHome.dart';


class HomePage extends StatefulWidget {
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int qindex=0;
void getrandom(){
  Random random=Random();
  setState(() {
    qindex=random.nextInt(sweetSayings.length);
  });
}
@override
  void initState() {
    getrandom();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        CustomAppBar(
          index: qindex,
          onPressed: getrandom,
        ),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
       
              Carousel(),

              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Emergency",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ),
              EmergencyWidgets(),
              Padding(padding: const EdgeInsets.all(8.0),
              child: Text("Explore Livesafe", style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
             
             

              ),
              Lifesave(),
             Safehome(),
          
            ],
          
          ),
        ),
      ],
    ),
  ),
)

    );
  }
}