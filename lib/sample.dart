// import 'package:flutter/material.dart';

// class Sample extends StatelessWidget {
//   const Sample({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(child:Container(
//         child: SingleChildScrollView(
//           child: Container(
//             height: MediaQuery.of(context).size.height*2,
//             color: Colors.red,
//             child: Column(
//               children: [
//                 Container(
//                   height: 50,
//                   color: Colors.blue,
//                 ),
//                  Container(
//                   height: 50,
//                   color: Colors.yellow,
//                 )
//               ],
//             ),
//           ),
//         ),
//       )),
//     );
    
//   }
// }




//  Expanded(
//             child: Container(
//               padding: EdgeInsets.all(25),
//               width: MediaQuery.of(context).size.width,
//               color: Colors.white,
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("Top Rated Tutuor",
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w700,
//                           )),
//                       Text(
//                         "See All",
//                         style:
//                             TextStyle(color: Colors.blueAccent, fontSize: 13),
//                       )
//                     ],
//                   ),
//                   SingleChildScrollView(
//                     child: Column(
//                       children: [],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           )