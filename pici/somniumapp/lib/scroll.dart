// // import 'package:flutter/material.dart';

// // class Scroll extends StatelessWidget {
// //   const Scroll({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: NestedScrollView(
// //           headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
// //             return <Widget>[
// //               SliverAppBar(
// //                 expandedHeight: 300,
// //                 flexibleSpace: Stack(
// //                   children: [
// //                     Positioned.fill(
// //                         child: Container(
// //                       color: Colors.amber,
// //                     )),
// //                     Positioned(
// //                         bottom: -100,
// //                         left: 0,
// //                         right: 0,
// //                         child: Container(
// //                           height: 200,
// //                           color: Colors.red,
// //                         ))
// //                   ],
// //                 ),
// //               ),
// //             ];
// //           },
// //           body: SliverToBoxAdapter(
// //             child: Container(
// //               width: 200,
// //               height: 200,
// //               color: Colors.black,
// //             ),
// //           )),
// //     );
// //   }
// // }
// import 'dart:math';

// import 'package:flutter/material.dart';

// class Scroll extends StatelessWidget {
//   const Scroll({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             backgroundColor: Colors.white,

//             actions: <Widget>[
//               IconButton(icon: const Icon(Icons.share), onPressed: () {})
//             ],
//             floating: false,
//             pinned: false,
//             //title: Text("Flexible space title"),
//             expandedHeight: 281,
//             flexibleSpace: Stack(
//               children: [
//                 const Positioned.fill(
//                   child: FadeInImage(
//                     image: NetworkImage(""),
//                     placeholder: NetworkImage(""),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Positioned(
//                   child: Container(
//                     height: 30,
//                     decoration: const BoxDecoration(
//                       color: Colors.green,
//                       borderRadius: BorderRadius.vertical(
//                         top: Radius.circular(40),
//                       ),
//                     ),
//                   ),
//                   bottom: 0,
//                   left: 0,
//                   right: 0,
//                 )
//               ],
//             ),
//           ),
//           SliverList(
//               delegate: SliverChildBuilderDelegate((context, index) {
//             return ListTile(
//               tileColor: Colors.red,
//               title: Text(Random().nextInt(100).toString()),
//             );
//           }, childCount: 15))
//         ],
//       ),
//     );
//   }
// }
