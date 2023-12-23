//import 'package:flutter_application_1/screens/astudent_screen.dart';
//import 'package:flutter_application_1/widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/pages/circle_button.dart';
import 'package:flutter_application_1/views/pages/search_text.dart';
import 'package:flutter_application_1/views/pages/widgets/YouthCore.dart';
import 'package:flutter_application_1/views/pages/widgets/home_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
//import 'package:flutter_application_1/screens/ayouth_screen.dart';
//import 'package:flutter_application_1/widgets/circlebutton.dart';
//import 'package:google_nav_bar/google_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(),
            SizedBox(
              height: 20,
            ),
            Text(
              ' Explor more with \nStudents Assistant',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Body(),
            //BottomBar()
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Color.fromRGBO(0, 57, 202, 0.98),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: Color.fromRGBO(0, 57, 202, 0.98),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Color.fromARGB(255, 116, 211, 255),
            gap: 8,
            onTabChange: (index) {
              print(index);
            },
            padding: const EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Likes',
              ),
              GButton(
                icon: Icons.chat_bubble,
                text: 'Chat',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.white,
          shadowColor: Color.fromRGBO(206, 216, 241, 0.973),
          elevation: 9,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Row(
              children: [
                /*Image.network(
                  "https://example.com/image.png",
                  width: 100,
                  height: 100,
                ),*/
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "Student Activites",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          color: Colors.white,
          shadowColor: Color.fromRGBO(206, 216, 241, 0.973),
          elevation: 9,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Row(
              children: [
                /*Image.network(
                  "https://example.com/image.png",
                  width: 100,
                  height: 100,
                ),*/
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "Youth Care",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => YouthCore()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(0, 57, 202, 0.98),
            Color.fromARGB(255, 116, 211, 255),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, \n Ree',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            CircleButton(
              icon: Icons.notifications,
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        const SearchTextField(),
      ]),
    );
  }
}
// import 'package:flutter/material.dart';
// //import 'package:flutter_application_1/views/pages/widgets/StudentActivities.dart';
// import 'package:flutter_application_1/views/pages/widgets/YouthCore.dart';
// import 'package:flutter_application_1/views/pages/widgets/home_page.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Home"),
//         backgroundColor: Color.fromRGBO(30, 112, 220, 0.808),
//       ),
//       body: Container(
//         width: double.infinity,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             colors: [
//               Color.fromRGBO(0, 57, 202, 0.98),
//               Color.fromARGB(255, 116, 211, 255),
//               Colors.white
//             ],
//           ),
//         ),
//         child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               SizedBox(height: 80),
//               Padding(
//                 padding: EdgeInsets.all(20),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Text(
//                       "Make Learning Easier With Student Assistant",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 40,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Text(
//                       "to get started now!",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 30,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Expanded(
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(60),
//                       topRight: Radius.circular(60),
//                     ),
//                   ),
//                   child: SingleChildScrollView(
//                     child: Padding(
//                       padding: EdgeInsets.all(30),
//                       child: Form(
//                         // key: _formKey,
//                         child: Column(
//                           children: <Widget>[
//                             SizedBox(
//                               height: 80,
//                             ),
//                             Container(
//                               padding: EdgeInsets.all(20),
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.circular(10),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Color.fromRGBO(27, 83, 225, 0.992),
//                                     blurRadius: 20,
//                                     offset: Offset(0, 10),
//                                   ),
//                                 ],
//                               ),
//                               child: Column(
//                                 children: <Widget>[
//                                   Text(
//                                     "Choose which activities you prefer",
//                                     style: TextStyle(
//                                       color: Color.fromARGB(255, 8, 5, 5),
//                                       fontSize: 30,
//                                     ),
//                                   ),
//                                   TextButton(
//                                     onPressed: () async {
//                                       Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (context) => Homepage()),
//                                       );
//                                     },
//                                     child: Container(
//                                       height: 150,
//                                       width: 1000,
//                                       margin:
//                                           EdgeInsets.symmetric(horizontal: 30),
//                                       decoration: BoxDecoration(
//                                         borderRadius:
//                                             BorderRadius.circular(100),
//                                         color:
//                                             Color.fromARGB(255, 232, 235, 236),
//                                       ),
//                                       child: Center(
//                                         child: Text(
//                                           "Student Activites ",
//                                           style: TextStyle(
//                                             color: Color.fromARGB(
//                                                 255, 74, 179, 255),
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 25,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   Text(
//                                       "-------------------------------------------------------------------------"),
//                                   TextButton(
//                                     onPressed: () async {
//                                       Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (context) => YouthCore()),
//                                       );
//                                     },
//                                     child: Container(
//                                       height: 150,
//                                       width: 1000,
//                                       margin:
//                                           EdgeInsets.symmetric(horizontal: 30),
//                                       decoration: BoxDecoration(
//                                           borderRadius:
//                                               BorderRadius.circular(100),
//                                           color: Color.fromARGB(
//                                               255, 230, 234, 236)),
//                                       child: Center(
//                                         child: Text(
//                                           "Youth Core ",
//                                           style: TextStyle(
//                                               color: Color.fromARGB(
//                                                   255, 74, 179, 255),
//                                               fontWeight: FontWeight.bold,
//                                               fontSize: 25),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ]),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: Color.fromRGBO(73, 151, 253, 0.808),
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.chat),
//             label: 'Chat',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }
