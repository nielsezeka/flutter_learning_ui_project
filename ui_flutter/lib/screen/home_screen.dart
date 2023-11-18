import 'package:flutter/material.dart';
import 'package:ui_flutter/constants.dart';
import '../model/category_model.dart';
import '../model/featurestore_model.dart';
import '../widget/category_widget.dart';
import 'store_product_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 200,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                        image: AssetImage('assets/images/bg3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Claim your daily \nfree delivery now!',
                            style: Styles.title3.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 8),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                minimumSize: const Size(150, 50),
                                backgroundColor:
                                    Styles.primaryColor.withOpacity(0.5)),
                            child: const Text(
                              'Order Now',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: GridView.builder(
                  itemCount: categoryList.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, childAspectRatio: 1),
                  itemBuilder: (context, index) {
                    final item = categoryList[index];
                    return Category(category: item);
                  }),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              alignment: Alignment.centerLeft, // Đặt căn chỉnh sang trái
              child: const Text(
                'Featured',
                style: Styles.title2,
              ),
            ),
            SizedBox(
              height: 250, // Điều chỉnh chiều cao của danh sách theo ý bạn
              child: ListView.builder(
                scrollDirection:
                    Axis.horizontal, // Đặt scrollDirection là horizontal
                itemCount: featuredStores.length,
                itemBuilder: (context, index) {
                  final store = featuredStores[index];
                  return InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            StoreProductsScreen(store: store),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FeaturedStoreCard(store: store),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FeaturedStoreCard extends StatefulWidget {
  final FeaturedStoreModel store;

  const FeaturedStoreCard({super.key, required this.store});

  @override
  State<FeaturedStoreCard> createState() => _FeaturedStoreCardState();
}

class _FeaturedStoreCardState extends State<FeaturedStoreCard> {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: const EdgeInsets.all(5),
      width: 200, // Điều chỉnh chiều rộng của mỗi card theo ý bạn
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                widget.store.image,
                height: 150,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
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
                  )),
            )
          ]),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.store.name,
              style: Styles.title1,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('${widget.store.distance.toStringAsFixed(1)} km'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('${widget.store.minutesAway} minutes'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

