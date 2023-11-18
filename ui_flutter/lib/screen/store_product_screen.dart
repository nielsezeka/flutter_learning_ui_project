import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:ui_flutter/widget/appbar_custom.dart';
import 'package:ui_flutter/widget/product_list.dart';
import '../constants.dart';
import '../model/featurestore_model.dart';
import '../model/product_model.dart';
import '../widget/showbottomsheet.dart';

class StoreProductsScreen extends StatefulWidget {
  const StoreProductsScreen({Key? key, required this.store}) : super(key: key);
  final FeaturedStoreModel store;

  @override
  State<StoreProductsScreen> createState() => _StoreProductsScreenState();
}

class _StoreProductsScreenState extends State<StoreProductsScreen> {
  Map<ProductModel, int> cart = {};
  List<String> categories = [
    'Category 1',
    'Category 2',
    'Category 3',
    'Category 4',
    'Category 5',
    'Category 6'
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBody: true,
          endDrawer: Drawer(
            child: ListView(
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('Drawer Header'),
                ),
                ListTile(
                  title: const Text('Item 1'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Item 2'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          backgroundColor: Colors.black,
          body: Column(
            children: [
              AppBarWidget(
                title: widget.store.name,
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.store.name,
                              style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Text(
                                      widget.store.rating.toStringAsFixed(1),
                                      style: Styles.title1,
                                    ),
                                  ],
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                                '${widget.store.distance.toStringAsFixed(1)} km'),
                            const SizedBox(
                              width: 10,
                            ),
                            Text('${widget.store.minutesAway} minutes'),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 40, // Điều chỉnh chiều cao của menu danh mục
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: categories.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedIndex =
                                        index; // Cập nhật danh mục được chọn
                                  });
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: selectedIndex == index
                                        ? Colors.black
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        15), // Điều chỉnh boderRadius tại đây
                                    border: Border.all(
                                      color: Colors.black, // Màu sắc của border
                                      width: 1, // Độ dày của border
                                    ),
                                  ),
                                  child: Text(
                                    categories[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: selectedIndex == index
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: FutureBuilder(
                            future: DefaultAssetBundle.of(context)
                                .loadString('assets/sample_products.json'),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return const CircularProgressIndicator();
                              } else if (snapshot.hasError) {
                                return const Text('Error loading data');
                              }

                              // Check if snapshot.data is not null before using it
                              List<dynamic> productsData =
                                  json.decode(snapshot.data ?? '[]');
                              List<ProductModels> products = productsData
                                  .map((json) => ProductModels.fromJson(json))
                                  .toList();
                              return ProductList(products: products);
                            },
                          ),
                        ),
                        // Expanded(
                        //   child: ListView.builder(
                        //     itemCount: widget.store.products.length,
                        //     itemBuilder: (context, index) {
                        //       final product = widget.store.products[index];
                        //       int quantity = cart[product] ?? 0;
                        //       return Padding(
                        //         padding: const EdgeInsets.only(bottom: 10),
                        //         child: InkWell(
                        //           onTap: () {
                        //             setState(() {
                        //               cart[product] = quantity + 1;
                        //             });
                        //           },
                        //           child: ListTile(
                        //             leading: Image.asset(
                        //               product.imageUrl,
                        //               width: 60,
                        //               height: 60,
                        //               fit: BoxFit.cover,
                        //             ),
                        //             title: Text(
                        //               product.name,
                        //               style: Styles.title1,
                        //             ),
                        //             subtitle: Row(
                        //               children: [
                        //                 Container(
                        //                     decoration: BoxDecoration(
                        //                       color: const Color.fromARGB(
                        //                           255, 90, 240, 85),
                        //                       borderRadius:
                        //                           BorderRadius.circular(15),
                        //                     ),
                        //                     child: Padding(
                        //                       padding:
                        //                           const EdgeInsets.all(8.0),
                        //                       child: Text(
                        //                           '\$${product.price.toStringAsFixed(2)}'),
                        //                     )),
                        //                 const SizedBox(
                        //                   width: 10,
                        //                 ),
                        //                 Expanded(
                        //                     child: Text(product.description)),
                        //               ],
                        //             ),
                        //             trailing: quantity > 0
                        //                 ? Text(
                        //                     '$quantity',
                        //                     style: Styles.title1
                        //                         .copyWith(color: Colors.green),
                        //                   )
                        //                 : const SizedBox.shrink(),
                        //           ),
                        //         ),
                        //       );
                        //     },
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              height: 60,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${widget.store.products.map((e) => e.price).reduce((value, element) => value + element).toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                      30.0), // BorderRadius ở góc trái
                                  topRight: Radius.circular(
                                      30.0), // BorderRadius ở góc phải
                                ),
                              ),
                              builder: (BuildContext context) {
                                return ShowModalBottomSheet(
                                  featuredStoreModel: widget.store,
                                );
                              },
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.shopping_cart,
                                  size: 25,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Add To Cart',
                                  style: Styles.title1
                                      .copyWith(color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
