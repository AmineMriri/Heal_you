// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:gras_savoye/my_home.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    var data = <String, String>{
      'image': 'user.png',
      'name': 'Foulen',
      'surname': 'Ben Foulen',
      'email': 'Foulen@Foulen.com'
    };
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          // FutureBuilder<DocumentSnapshot>(
          //     future: users.doc(user!.uid).get(),
          //     builder: (BuildContext context,
          //         AsyncSnapshot<DocumentSnapshot> snapshot) {
          //       if (snapshot.hasError) {
          //         return Text("Something went wrong");
          //       }
          //
          //       if (snapshot.hasData && !snapshot.data!.exists) {
          //         return Text("Document does not exist");
          //       }
          //       if (snapshot.connectionState == ConnectionState.done) {
          //         Map<String, dynamic> data =
          //         snapshot.data!.data() as Map<String, dynamic>;
          //         return DrawerHeader(
          //           decoration: const BoxDecoration(
          //             color: Colors.black38,
          //           ),
          //           child: Column(
          //             children: [
          //               ListTile(
          //                 leading: CircleAvatar(
          //                     radius: 30,
          //                     backgroundImage:
          //                     NetworkImage("${data['image']}")),
          //                 title: Text("${data['name']} ${data['surname']}"),
          //                 subtitle: Text('${data['email']}'),
          //               ),
          //               TextButton.icon(
          //                 onPressed: () {
          //                   Navigator.push(
          //                       context,
          //                       MaterialPageRoute(
          //                           builder: (context) => /*update profile page*/ ));                          },
          //                 icon: Icon(Icons.edit),
          //                 label: Text("Edit Profile"),
          //               ),
          //             ],
          //           ),
          //         );
          //       }
          //       return CircularProgressIndicator();
          //     }),

          DrawerHeader(
          decoration: const BoxDecoration(
          color: Colors.black38,
          ),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                    radius: 30,
                    // backgroundImage: NetworkImage("${data['image']}")
              backgroundImage: AssetImage("images/${data['image']}")

              ),
                title: Text("${data['name']} ${data['surname']}"),
                subtitle: Text('${data['email']}'),
              ),
              TextButton.icon(
                onPressed: () {
                  // Get.to(() => UpdateProfile());
                },
                icon: Icon(Icons.edit),
                label: Text("Edit Profile"),
              ),
            ],
          ),
        ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 00),
            child: ListTile(
                leading: Icon(
                  Icons.fact_check,
                  color: Colors.blue,
                  size: 30,
                ),
                title: Row(
                  children: const [
                    Text('Make Appointments',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                    Spacer(),
                    Icon(
                      Icons.navigate_next,
                      color: Colors.grey,
                      size: 40,
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => /*get an appointement page*/ MyHome() ));                }),
          ),
          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.only(left: 00),
            child: ListTile(
              leading: const Icon(
                Icons.biotech,
                color: Colors.blueAccent,
                size: 30,
              ),
              title: Row(
                children: const [
                  Text('Test Bookings',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                  Spacer(),
                  Icon(
                    Icons.navigate_next,
                    color: Colors.grey,
                    size: 40,
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => /* book a test*/ MyHome() ));              },
            ),
          ),
          // const Divider(color: Colors.blueGrey,),
          // Padding(
          //   padding: const EdgeInsets.only(left: 00),
          //   child: ListTile(
          //       leading: const Icon(
          //         Icons.monitor_heart_rounded,
          //         size: 30,
          //         color: Colors.blueAccent,
          //       ),
          //       title: Row(
          //         children: const [
          //           Text('Medical Records',
          //               style: TextStyle(
          //                   fontSize: 16.0,
          //                   fontWeight: FontWeight.w500,
          //                   color: Colors.black)),
          //           Spacer(),
          //           Icon(
          //             Icons.navigate_next,
          //             color: Colors.grey,
          //             size: 40,
          //           ),
          //         ],
          //       ),
          //       onTap: () {
          //         Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (context) => /* medical record screen*/ MyHome() ));
          //       }),
          // ),
          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.only(left: 00),
            child: ListTile(
                leading: const Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.blueAccent,
                ),
                title: Row(
                  children: const [
                    Text('My Doctors',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                    Spacer(),
                    Icon(
                      Icons.navigate_next,
                      color: Colors.grey,
                      size: 40,
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => /* My doctors screen*/ MyHome() ));                }),
          ),
          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.only(left: 00),
            child: ListTile(
                leading: const Icon(
                  Icons.message,
                  size: 30,
                  color: Colors.blueAccent,
                ),
                title: Row(
                  children: const [
                    Text('Appointments',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                    Spacer(),
                    Icon(
                      Icons.navigate_next,
                      color: Colors.grey,
                      size: 40,
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => /* appointement*/ MyHome() ));                }),
          ),
          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.only(left: 00),
            child: ListTile(
                leading: const Icon(
                  Icons.health_and_safety_sharp,
                  size: 30,
                  color: Colors.blueAccent,
                ),
                title: Row(
                  children: const [
                    Text('My Test',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                    Spacer(),
                    Icon(
                      Icons.navigate_next,
                      color: Colors.grey,
                      size: 40,
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => /* My test result screen*/ MyHome() ));                }),
          ),
          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.only(left: 00),
            child: ListTile(
                leading: const Icon(
                  Icons.timer_sharp,
                  size: 30,
                  color: Colors.blueAccent,
                ),
                title: Row(
                  children: const [
                    Text('Reminders',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                    Spacer(),
                    Icon(
                      Icons.navigate_next,
                      color: Colors.grey,
                      size: 40,
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => /* Reminder screen*/ MyHome() ));                }),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 00),
            child: ListTile(
                leading: const Icon(
                  Icons.menu_book,
                  size: 30,
                  color: Colors.blueAccent,
                ),
                title: Row(
                  children: const [
                    Text('Family Reports List',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                    Spacer(),
                    Icon(
                      Icons.navigate_next,
                      color: Colors.grey,
                      size: 40,
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => /* Family Health Report screen*/ MyHome() ));                }),
          ),

        ],
      ),
    );
  }
}
