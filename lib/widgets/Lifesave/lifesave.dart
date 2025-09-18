import 'package:flutter/material.dart';
import 'package:women_safety/widgets/Lifesave/PoliceStation.dart';  
import 'package:women_safety/widgets/Lifesave/Hospital.dart';
import 'package:women_safety/widgets/Lifesave/busstop.dart';
import 'package:women_safety/widgets/Lifesave/pharmacy.dart';

class Lifesave extends StatelessWidget {
  const Lifesave({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    height: 100,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children:  [
          Policestation(),
          SizedBox(width: 10),
          Hospital(),
          SizedBox(width: 10),
          Busstop(),
          SizedBox(width: 10),
          Pharmacy(),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
