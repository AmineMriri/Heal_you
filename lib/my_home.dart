import 'package:flutter/material.dart';
import 'auth/login.dart';
import 'drawer.dart';

class MyHome extends StatefulWidget{
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome>{





  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(backgroundColor:Colors.blue.shade600 , actions: <Widget>[
          // Expanded(child: const drawer()),
          // SizedBox(height: 10),
          SizedBox(
            width: 20,
          ),
          Padding(
              padding: EdgeInsets.only(right: 10.0, top: 20),
              child: GestureDetector(
                onTap: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Login() ));
                },
                child: Icon(
                  Icons.logout,
                  size: 30.0,
                  color: Colors.black54,
                ),
              )),
          // SizedBox(height: 10),
        ]),
      ),
      drawer: const drawer(),




      // temporary button
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