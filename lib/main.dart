import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
      home:Scaffold(
      backgroundColor: Colors.yellow[500],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          
          'Dicee',
          style:TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 35,
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue[700],
      ),
      body : BodyPage(),
      ),
    )
  );
}

class BodyPage extends StatefulWidget {
  @override
  _BodyPageState createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  int numberb=6;
  int numbera=6;
  void changeDiceFace(){
    setState(() {
        numberb=Random().nextInt(6)+1;
        numbera=Random().nextInt(6)+1;
      
    });


  }
  @override
  Widget build(BuildContext context) {
   
    return SafeArea(
        child: Center(
          child: Row(
            children: <Widget>[              
              Expanded(
                child: FlatButton(
                  child: Image.asset("images/Dice$number.svg.png"),
                  onPressed: (){
                    
                      changeDiceFace();

                    
                  },
                ),
              ),     
              Expanded(
                //flex:1,
                child: FlatButton(
                  child: Image.asset("images/Dice$numbera.svg.png"),
                  onPressed: (){
                    
                      changeDiceFace();

                                     
                  },
                ),
              ),
            ],
          ),
        )
      );
  }

}

