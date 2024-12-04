// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.grey.shade600,
//         appBar: AppBar(
//           title: Text("Layout Widgets"),
//           backgroundColor: Colors.black,
//         ),
//         body: Center(
//           child: Container(
//             color: Colors.amber,
//             width: 300,
//             height: 300,
//             child: Center(
//               child: Text(
//                 "We are learning layout elements",
//                 style: TextStyle(color: Colors.white, fontSize: 20),
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.grey.shade600,
//         appBar: AppBar(
//           title: Text("Layout Widgets"),
//           backgroundColor: Colors.black,
//         ),
//         // body: Padding(padding: EdgeInsets.all(20), child: Text("Hello"), ),
//         body: Container(
//           // margin: EdgeInsets.all(20),
//           // margin: EdgeInsets.fromLTRB(20, 30, 40, 50),
//           // margin: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
//           margin: EdgeInsets.only(left: 20),
//           padding: EdgeInsets.only(top: 30),
//           color: Colors.amber,
//           width: 300,
//           height: 300,
//           child: Text(
//             "We are learning layout elements",
//             style: TextStyle(color: Colors.white, fontSize: 20),
//           ),
//         ),
//       ),
//     ),
//   );
// }

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           backgroundColor: Colors.grey.shade600,
//           appBar: AppBar(
//             title: Text("Layout Widgets"),
//             backgroundColor: Colors.black,
//           ),
//           body: Row(
//             children: [
//               Container(
//                 color: Colors.amber,
//                 width: 150,
//                 height: 150,
//                 child: Center(
//                   child: Text(
//                     "Container 01",
//                     style: TextStyle(color: Colors.white, fontSize: 19),
//                   ),
//                 ),
//               ),
//               Container(
//                 color: Colors.red,
//                 width: 150,
//                 height: 150,
//                 child: Center(
//                   child: Text(
//                     "Container 02",
//                     style: TextStyle(color: Colors.white, fontSize: 19),
//                   ),
//                 ),
//               ),
//             ],
//           )),
//     ),
//   );
// }



void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.grey.shade600,
          appBar: AppBar(
            title: Text("Layout Widgets"),
            backgroundColor: Colors.black,
          ),
          body: Column(
            children: [
              Row(
                children: [
                  Container(
                    color: Colors.amber,
                    width: 150,
                    height: 150,
                    child: Center(
                      child: Text(
                        "Container 01",
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.red,
                    width: 150,
                    height: 150,
                    child: Center(
                      child: Text(
                        "Container 02",
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                    ),
                  ),
                ],
              ),
          
              Row(
                children: [
                  Container(
                    color: Colors.green,
                    width: 150,
                    height: 150,
                    child: Center(
                      child: Text(
                        "Container 03",
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    width: 150,
                    height: 150,
                    child: Center(
                      child: Text(
                        "Container 04",
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                    ),
                  ),
                ],
              ),
            
            ],
          )),
    ),
  );
}
