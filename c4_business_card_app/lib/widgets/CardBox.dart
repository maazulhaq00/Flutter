import 'package:flutter/material.dart';

class CardBox extends StatelessWidget {
  final IconData cardIcon;
  final String cardText;

  const CardBox({super.key, required this.cardIcon, required this.cardText});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: ListTile(
          leading: Icon(
            this.cardIcon,
            color: Colors.deepPurple.shade500,
          ),
          title: Text(
            this.cardText,
            style: TextStyle(
              color: Colors.deepPurple.shade800,
              fontSize: 20,
              fontFamily: 'Source Code Pro',
            ),
          ),
          // subtitle: Text("This is subtitle"),
          // trailing: Icon(Icons.more_vert),
          ),
        ),
    );
  }
}


// Container(
//       padding: EdgeInsets.all(10),
//       margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
//       color: Colors.white,
//       child: Row(
//         children: [
//           Icon(
//             this.cardIcon,
//             color: Colors.deepPurple.shade500,
//           ),
//           SizedBox(
//             width: 10.0,
//           ),
//           Text(
//             this.cardText,
//             style: TextStyle(
//               color: Colors.deepPurple.shade800,
//               fontSize: 20,
//               fontFamily: 'Source Code Pro',
//             ),
//           )
//         ],
//       ),
//     );