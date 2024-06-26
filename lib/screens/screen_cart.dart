//
//
//
// import 'package:flutter/material.dart';
//
// import '../constants.dart';
//
// class CartScreen extends StatefulWidget {
//   const CartScreen({super.key});
//
//   @override
//   State<CartScreen> createState() => _CartScreenState();
// }
//
// class _CartScreenState extends State<CartScreen> {
//   List<Product> basketList = [
//     Product(
//         productId: 1,
//         productName: "노트북(Laptop)",
//         productImageUrl: "https://picsum.photos/id/1/300/300",
//         price: 600000),
//     Product(
//         productId: 4,
//         productName: "키보드(Keyboard)",
//         productImageUrl: "https://picsum.photos/id/60/300/300",
//         price: 50000),
//   ];
//
//   List<Map<int, int>> quantityList = [
//     {1: 2},
//     {4: 3},
//   ];
//
//   double totalPrice = 0;
//
//   @override
//   void initState() {
//     super.initState();
//     for (int i = 0; i < basketList.length; i++) {
//       totalPrice +=
//           basketList[i].price! * quantityList[i][basketList[i].productId]!;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("장바구니"),
//         centerTitle: true,
//       ),
//       body: ListView.builder(
//         itemCount: basketList.length,
//         itemBuilder: (context, index) {
//           return basketContainer(
//               productNo: basketList[index].productId ?? 0,
//               productName: basketList[index].productName ?? "",
//               productImageUrl: basketList[index].productImageUrl ?? "",
//               price: basketList[index].price ?? 0,
//               quantity: quantityList[index][basketList[index].productId] ?? 0);
//         },
//       ),
//       bottomNavigationBar: Padding(
//           padding: const EdgeInsets.all(20),
//           child: FilledButton(
//             onPressed: () {
//               Navigator.of(context).push(MaterialPageRoute(
//                 builder: (context){
//                   return const ItemCheckoutPage();
//                 },
//               ));
//             },
//             child: Text("총 ${numberFormat.format(totalPrice)}원 결제하기"),
//           )),
//     );
//   }
//
//   Widget basketContainer({
//     required int productNo,
//     required String productName,
//     required String productImageUrl,
//     required double price,
//     required int quantity,
//   }) {
//     return Container(
//       padding: const EdgeInsets.all(8),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           CachedNetworkImage(
//             width: MediaQuery.of(context).size.width * 0.3,
//             fit: BoxFit.cover,
//             imageUrl: productImageUrl,
//             placeholder: (context, url) {
//               return const Center(
//                 child: CircularProgressIndicator(
//                   strokeWidth: 2,
//                 ),
//               );
//             },
//             errorWidget: (context, url, error) {
//               return const Center(
//                 child: Text("오류 발생"),
//               );
//             },
//           ),
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text(
//                   productName,
//                   textScaleFactor: 1.2,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text("${numberFormat.format(price)}원"),
//                 Row(
//                   children: [
//                     const Text("수량:"),
//                     IconButton(
//                         onPressed: () {},
//                         icon: const Icon(
//                           Icons.remove,
//                         )),
//                     Text("$quantity"),
//                     IconButton(
//                         onPressed: () {},
//                         icon: const Icon(
//                           Icons.add,
//                         )),
//                     IconButton(
//                         onPressed: () {},
//                         icon: const Icon(
//                           Icons.delete,
//                         )),
//                   ],
//                 ),
//                 Text("합계: ${numberFormat.format(price * quantity)}원"),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
