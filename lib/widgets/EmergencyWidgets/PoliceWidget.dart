import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class Policewidget extends StatelessWidget {
  const Policewidget({super.key});
_callNumber(String number) async{

await FlutterPhoneDirectCaller.callNumber(number);
}
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: Card(
        elevation: 5,
        shadowColor: Colors.black,
        color: Colors.transparent,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              colors: [
                Color(0xFFFD8080),
                Color(0XFFFB8580),
                Color(0XFFFBD079),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔔 Icon
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white.withOpacity(0.2),
                child: Image.asset(
                  "assets/images/alert.png",
                  height: 24,
                  width: 24,
                ),
              ),
              const SizedBox(height: 12),
        
              // 🟥 Title
              Text(
                "Active Emergency",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width * 0.045,
                  fontWeight: FontWeight.bold,
                ),
              ),
        
              // ⬇ Small subtitle
             
              Text(
                "Call 1-1-2 for emergencies",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.9),
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                ),
              ),
        
        
        
              // 🔘 Emergency number pill button
              Container(
                width: MediaQuery.of(context).size.width * 0.15,
            
                decoration: BoxDecoration(
                  color: Colors.white,
                  
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  "1-1-2",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
