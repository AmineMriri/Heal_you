import 'package:flutter/material.dart';
import 'package:gras_savoye/main.dart';
import 'package:gras_savoye/my_home.dart';
import 'package:gras_savoye/auth/reset_pass.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();


}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:[
            Colors.blue.shade900,
            Colors.blue.shade300,
            Colors.purple.shade600,
            ],
          )
        ),
        child: Stack(
          //
          children: [
            SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                            Center(
                              child: Container(
                                padding: EdgeInsets.only(top: 60),
                                child: Text(
                                  'Portail Adhérent \n',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 33,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.8,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: GestureDetector(
                          onTap: (){},
                          child:Image.asset(
                            'images/company_logo.png',
                            height: 80,
                            fit: BoxFit.fill,
                          ),
                        )),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 35,right: 35),
                    child: Column(
                      children: [
                        TextFormField(
                          // controller: ,
                          style: TextStyle(color: Colors.black),
                          validator: (value){
                            if (value!.isEmpty){
                              return 'email is required';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          // controller: ,
                          style: TextStyle(),
                          obscureText: true,
                          validator: (value){
                            if (value!.isEmpty){
                              return 'password is required';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            hintText: "Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 250,
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 80.0),
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
                                    if (_formKey.currentState!.validate()){
                                      // sign in
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context)=> MyHome()));

                                    }
                                  },
                                  child: const Text(
                                    'Sign In',
                                    style: TextStyle(
                                      fontSize: 20,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 10.0,
                                          color: Colors.black38,
                                          offset: Offset(-5.0, 5.0),
                                        ),
                                      ],
                                      letterSpacing: 2,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //   children: [
                        //     TextButton(
                        //         onPressed: (){
                        //           Navigator.push(
                        //               context,
                        //               MaterialPageRoute(
                        //                   builder: (context)=>MyApp() /*sign up ()*/));
                        //         },
                        //         child: Text(
                        //           'Don t have any account?' ,
                        //           style: TextStyle(
                        //             decoration: TextDecoration.underline,
                        //             color: Colors.black,
                        //             fontSize: 18,
                        //           ),
                        //         )),
                        //   ],
                        // ),

                        TextButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ResetPass() /*Reset passwd()*/));
                            },
                          child: Text(
                          'Forgot password ?',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        ),
                        SizedBox(
                          height: 230,
                        ),
                      ],
                    ),
                  )
                    ],
                ),
                ),
                ),
              ),

          ],
        ),
      ),
    );
  }
}
