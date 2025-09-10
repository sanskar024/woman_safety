import 'package:flutter/material.dart';
import 'package:women_safety/widgets/EmergencyWidgets/PoliceWidget.dart';
import 'package:women_safety/widgets/EmergencyWidgets/ambulance.dart';
import 'package:women_safety/widgets/EmergencyWidgets/firebrigade.dart';

class EmergencyWidgets extends StatelessWidget {
  const EmergencyWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180, // control total height here
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: const [
          Policewidget(),
          AmbulanceWidget(),
          FirebrigadeWidget(),
          
         
        ],
      ),
    );
  }
}
