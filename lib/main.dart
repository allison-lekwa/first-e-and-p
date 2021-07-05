// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyHomePage()));
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   PageController pageController = PageController(initialPage: 0);


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         pageSnapping: true,
//         controller: pageController,
//         children: [
//           Container(color: Colors.green),
//           Container(color: Colors.blue),
//           Container(color: Colors.orange)
//         ],
//       ),
//     );
//   }
// }

import 'package:first_e_and_p/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(),
    );
  }
}