import 'package:flutter/material.dart';
import 'package:ui_flutter/screen/splash_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Tutorial',
      home: SafeArea(
        child: Scaffold(body: SplashScreen()),
      ),
    ),
  );
}

// import 'dart:convert';
// import 'package:flutter/material.dart';

// import 'model/product_model.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Product List'),
//         ),
//         body: FutureBuilder(
//           future: DefaultAssetBundle.of(context)
//               .loadString('assets/sample_products.json'),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const CircularProgressIndicator();
//             } else if (snapshot.hasError) {
//               return const Text('Error loading data');
//             }

//             // Check if snapshot.data is not null before using it
//             List<dynamic> productsData = json.decode(snapshot.data ?? '[]');
//             List<ProductModels> products = productsData
//                 .map((json) => ProductModels.fromJson(json))
//                 .toList();

//             return ProductList(products: products);
//           },
//         ),
//       ),
//     );
//   }
// }

// class ProductList extends StatelessWidget {
//   final List<ProductModels> products;

//   ProductList({super.key, required this.products});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (context, index) {
//           var product = products[index];
//           return Column(children: [
//             Text(product.name),
//             Text(product.detail),
//             Text(product.price),
//             Text(product.offer ?? ''),
//             Image.network(product.image),
//             // Image.asset("assets/images/avt.jpg")
//           ]);
//         });
//   }
// }
