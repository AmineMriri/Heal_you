import 'package:flutter/material.dart';
import 'package:gras_savoye/login.dart';


class MyHome extends StatefulWidget{
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome>{





  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Color(0xff5429a1),
            shape: RoundedRectangleBorder(
              borderRadius:
                BorderRadius.circular(30.0),
            ),
          ),
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Login() ));
          }, child: const Text(
          'login',
          style: TextStyle(
            fontSize: 20,
            shadows: [
              Shadow(
                blurRadius: 10.0,
                color: Colors.black38,
                offset: Offset(-5.0,5.0),
              ),
            ],
            letterSpacing: 2,
          ),
        ),
        ),
      ),
    );
  }

}