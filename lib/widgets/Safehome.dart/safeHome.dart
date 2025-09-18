import 'package:flutter/material.dart';

class Safehome extends StatelessWidget {
  Safehome({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showModalBottomSheet(context: context, builder: (context)=> Container(
          height: MediaQuery.of(context).size.height/1.4,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          

        ));
      },
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          ),
        child: Container(
          height: 180,
          width: MediaQuery.of(context).size.width*.7,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Send Location"),
                      subtitle: Text( "Share Location"),
                    )
                    
                  ],
                ),
                
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                
                child: Image.asset("assets/images/route.jpg")),
            ],
          ),
        ),
      ),
    );
  }
}