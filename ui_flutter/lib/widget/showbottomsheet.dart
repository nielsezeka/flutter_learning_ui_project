import 'package:flutter/material.dart';
import 'package:ui_flutter/constants.dart';

import '../model/featurestore_model.dart';

class ShowModalBottomSheet extends StatefulWidget {
  const ShowModalBottomSheet({super.key, required this.featuredStoreModel});
  final FeaturedStoreModel featuredStoreModel;
  @override
  State<ShowModalBottomSheet> createState() => _ShowModalBottomSheetState();
}

class _ShowModalBottomSheetState extends State<ShowModalBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Check Out',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(10),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Delivery Time',
                      style: Styles.title1,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.access_time),
                        const SizedBox(width: 5),
                        Text(
                            '${widget.featuredStoreModel.minutesAway} minutes'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(10),
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width:
                              50, 
                          height:
                              50, 
                          decoration: const BoxDecoration(
                              shape:
                                  BoxShape.circle, 
                              color: Colors
                                  .white
                              ),
                          child: const Center(
                            child: Icon(
                              Icons.attach_money, 
                              color: Colors.green, 
                              size:
                                  30, 
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Promotion applied',
                              style: Styles.title1,
                            ),
                            Text(
                              '\$1.38(10%)',
                              style: Styles.title1,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Text(
                                  'View all',
                                  style: Styles.content1
                                      .copyWith(color: Colors.black),
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                )
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(10),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Payment',
                      style: Styles.title1,
                    ),
                    PaymentMethods()
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(10),
                height: 170,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Your Items',
                          style: Styles.title1,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Text(
                                      'Add Items',
                                      style: Styles.content1
                                          .copyWith(color: Colors.black),
                                    ),
                                    const Icon(
                                      Icons.add,
                                      size: 15,
                                    )
                                  ],
                                ),
                              ),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Big Mac',
                          style: Styles.title1,
                        ),
                        Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child:
                                const Text('\$6.30', style: Styles.content1)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Regural Mc Flurry Oreo',
                          style: Styles.title1,
                        ),
                        Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child:
                                const Text('\$3.50', style: Styles.content1)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        'Order: 12.80\$',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  String selectedPaymentMethod = 'Credit Card';

  List<String> paymentMethods = [
    'Credit Card',
    'PayPal',
    'Bank Transfer',
    'Cash'
  ];

  List<String> paymentMethodImages = [
    'assets/images/credit.png',
    'assets/images/paypag.png',
    'assets/images/banking.png',
    'assets/images/tienmat.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: DropdownButton<String>(
        value: selectedPaymentMethod,
        onChanged: (String? newValue) {
          setState(() {
            selectedPaymentMethod = newValue!;
          });
        },
        underline: Container(),
        items: paymentMethods.map<DropdownMenuItem<String>>(
          (String value) {
            int index = paymentMethods.indexOf(value);
            return DropdownMenuItem<String>(
              value: value,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    paymentMethodImages[index],
                    fit: BoxFit.cover,
                    height: 30,
                    width: 30,
                  ),
                  const SizedBox(width: 10),
                  Text(value),
                ],
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
