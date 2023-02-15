import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import '../productModel/model/product_snap.dart';
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SafeArea(child: SnappingList()),
//     );
//   }
// }

// class SnappingList extends StatefulWidget {
//   const SnappingList({Key? key}) : super(key: key);
//
//   @override
//   _SnappingListState createState() => _SnappingListState();
// }

// class _SnappingListState extends State<SnappingList> {
//   List<ProductSnap> productList = [
//     ProductSnap('assets/images/black_chair.jpg', 'Black Chair', 90, 15),
//     ProductSnap('assets/images/blue_sofa.jpg', 'Awesome Sofa', 100, 10),
//     ProductSnap('assets/images/copper_lamp.jpg', 'Copper Lamp', 10, 25),
//     ProductSnap('assets/images/orange_lamp.jpg', 'Orange Lamp', 9, 50),
//     ProductSnap('assets/images/pink_chair.jpg', 'Comfortable Chair', 15, 5),
//     ProductSnap('assets/images/white_chair.jpg', 'Simple Chair', 20, 7),
//     ProductSnap('assets/images/white_lamp.jpg', 'Nice Lamp', 14, 10),
//     ProductSnap('assets/images/yellow_planter.jpg', 'Awesome Planter', 9, 25),
//     ProductSnap('assets/images/white_sofa.jpg', 'Blue & white Sofa', 50, 43),
//     ProductSnap('assets/images/white_planter.jpg', 'White Planter', 5, 25),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: const Text("Listview with Snapping Effect"),
//         ),
//         body: SizedBox(
//           height: 250,
//           child: ScrollSnapList(
//             itemBuilder: _buildListItem,
//             itemCount: productList.length,
//             itemSize: 150,
//             onItemFocus: (index) {},
//             dynamicItemSize: true,
//           ),
//         ));
//   }
//
//   Widget _buildListItem(BuildContext context, int index) {
//     ProductSnap product = productList[index];
//     return SizedBox(
//       width: 150,
//       height: 300,
//       child: Card(
//         elevation: 12,
//         child: ClipRRect(
//           borderRadius: const BorderRadius.all(Radius.circular(10)),
//           child: Column(
//             children: [
//               Image.asset(
//                 ProductSnap.imagePath,
//                 fit: BoxFit.cover,
//                 width: 150,
//                 height: 180,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Text(
//                 product.title,
//                 style: const TextStyle(fontSize: 15),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       '\$${product.cost}',
//                       style: const TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                     Text(
//                       '${product.reviewCount} Reviews',
//                       style: const TextStyle(color: Colors.blue),
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }