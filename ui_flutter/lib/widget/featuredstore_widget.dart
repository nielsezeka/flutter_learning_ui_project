import 'package:flutter/material.dart';
import 'package:ui_flutter/model/featurestore_model.dart';

class FeaturedStore extends StatelessWidget {
  const FeaturedStore({
    super.key, required this.featuredStoremodel,
  });
  final FeaturedStoreModel featuredStoremodel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(
                      featuredStoremodel.image
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.yellow, 
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.black,
                        size: 20,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '$featuredStoremodel.rating', 
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Phần thông tin cửa hàng
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  featuredStoremodel.name, // Tên cửa hàng
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '${featuredStoremodel.distance.toStringAsFixed(2)} kilometers away • ${featuredStoremodel.minutesAway} minutes',
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
