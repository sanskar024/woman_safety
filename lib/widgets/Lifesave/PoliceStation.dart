import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Policestation extends StatelessWidget {
  Policestation({super.key});
 final Uri _url = Uri.parse('https://www.google.com/maps/search/police+stations+near+me/');

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(  
            onTap: () => _launchUrl(),
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 70,
                width: 70,
                child: Center(
                  child: Image.asset('assets/images/police-badge.png', fit: BoxFit.contain),
                ),
              ),
            ),
          ),
          const SizedBox(height: 4),
          const Text("Police Station", style: TextStyle(fontSize: 10)),
        ],
      ),
    );
  }
}