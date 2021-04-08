import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text('Flutter Basics'),
      ),
      body:  Column(
        children: [
          Text('Welcome to Flutter',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red) ),
          SizedBox(height: 20,),
          Image.network("https://static.autox.com/uploads/bikes/2020/10/bmw-g-310-r.jpg",fit: BoxFit.cover,),
          SizedBox(height: 20,),
          buildContainer()
        ],
      ),
    );
  }

  Container buildContainer() {
    return Container(
          padding: const EdgeInsets.all(15) ,
          margin: const EdgeInsets.all(8),

          decoration: BoxDecoration(
            color: Colors.red.shade300,
            borderRadius: BorderRadius.all(Radius.circular(16)),
            boxShadow:[
              BoxShadow(
                color: Colors.grey,
                blurRadius: 15,
                spreadRadius: 1,
                offset: Offset(0,10)
              )
            ]
          ),


          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.star),
              Text('Documents',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white),),
              Text('Samples',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white),),
              Text('Reference',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white),),
            ],
          ),
        );
  }
}