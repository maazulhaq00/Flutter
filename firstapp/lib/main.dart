import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Center(
//         child: Text("Hello World"),
//       ),
//     ),
//   );
// }

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          title: Center(child: Text("My App")),
          backgroundColor: Colors.blue.shade400,
        ),
        body: Center(
          child: Text("Hello, Flutter"),
        ),

      ),
    )
  );
}