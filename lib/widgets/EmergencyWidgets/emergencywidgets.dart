import 'package:flutter/material.dart';
import 'package:women_safety/widgets/EmergencyWidgets/PoliceWidget.dart';
class  EmergencyWidgets extends StatelessWidget {
  const  EmergencyWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: const [
          Policewidget(),
          
        ],

      ),
    );
  }
}