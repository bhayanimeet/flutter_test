import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../res/global.dart';

class Fashion extends StatefulWidget {
  const Fashion({Key? key}) : super(key: key);

  @override
  State<Fashion> createState() => _FashionState();
}

class _FashionState extends State<Fashion> {
  List<Map<String, dynamic>> myFashionList = [
    {
      'image': 'assets/images/1.png',
      'title': 'Ben martin men classic t-shirt',
      'name': 'Classic T-Shirt',
      'price': '₹ 799',
      'price2': '₹ 999',
      'value': 799,
      'count': 0,
      'var': false,
    },
    {
      'image': 'assets/images/2.png',
      'title': '''Men's Cotton Clothing Neck Hoodies''',
      'name': '''Men's Cotton Clothing Neck Hoodies''',
      'price': '₹ 1,299',
      'price2': '₹ 1,499',
      'value': 1299,
      'count': 0,
      'var': false,
    },
    {
      'image': 'assets/images/3.png',
      'title': '''Bright yellow Men's kurta suit''',
      'name': '''Men's Kurta suit''',
      'price': '₹ 499',
      'price2': '₹ 699',
      'value': 499,
      'count': 0,
      'var': false,
    },
    {
      'image': 'assets/images/4.png',
      'title': '''Men's classic shirt with cotton clothing''',
      'name': '''Men's Classic Shirt''',
      'price': '₹ 1,000',
      'price2': '₹ 1,200',
      'value': 1000,
      'count': 0,
      'var': false,
    },
    {
      'image': 'assets/images/5.png',
      'title': '''Men's classic t-shirt''',
      'name': '''Men's classic t-shirt''',
      'price': '₹ 699',
      'price2': '₹ 890',
      'value': 699,
      'count': 0,
      'var': false,
    },
    {
      'image': 'assets/images/6.png',
      'title': '''Men's Cotton Clothing shirt''',
      'name': '''Men's cotton Clothing shirt''',
      'price': '₹ 1,999',
      'price2': '₹ 2,490',
      'value': 1999,
      'count': 0,
      'var': false,
    },
    {
      'image': 'assets/images/7.png',
      'title': '''Men's classic t-shirt''',
      'name': '''Men's classic t-shirt''',
      'price': '₹ 499',
      'price2': '₹ 799',
      'value': 499,
      'count': 0,
      'var': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
          child: SizedBox(
            height: 60,
            child: TextField(
              controller: Global.text,
              onSubmitted: (val) async {
                Global.title = val;
                if (Global.title == "phone" || Global.title == "Phone" || Global.title == "mobile" || Global.title == "Mobile") {
                  Navigator.pushNamed(context, 'mobile');
                } else if (Global.title == "fashion" || Global.title == "Fashion") {
                  Navigator.pushNamed(context, 'fashion');
                } else if (Global.title == "furniture" || Global.title == "Furniture") {
                  Navigator.pushNamed(context, 'furniture');
                } else if (Global.title == "grocery" || Global.title == "Grocery") {
                  Navigator.pushNamed(context, 'grocery');
                } else {
                  Navigator.pushNamed(context, 'nothing');
                }
              },
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              cursorColor: Colors.black,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                prefixIcon: Icon(Icons.search, color: Colors.grey.shade700),
                hintText: "Search",
                hintStyle: TextStyle(
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
                filled: true,
                fillColor: Colors.lightBlue.shade50,
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            ...myFashionList.map(
                  (e) => Container(
                height: MediaQuery.of(context).size.height * 0.27,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Neumorphic(
                        style: NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          surfaceIntensity: 0.5,
                          boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(8),
                          ),
                          depth: 7,
                          lightSource: LightSource.topLeft,
                          color: Colors.white,
                          shadowDarkColor: Colors.grey.shade400,
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.25,
                          width: MediaQuery.of(context).size.width / 2.4,
                          color: Colors.grey.shade50,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8,right: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(top: 5),
                                  alignment: Alignment.centerRight,
                                  child: GestureDetector(
                                    onTap: () async {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                Global.favIcon = Icons.favorite;
                                                Global.homeIcon = Icons.home_outlined;
                                                Global.home = Colors.black;
                                                Global.fav = Colors.white;
                                                Navigator.pushNamed(context, 'fav');
                                              });
                                            },child: const Text("Added to favorite...")),
                                        backgroundColor: Colors.blue,
                                        behavior: SnackBarBehavior.floating,
                                      ));
                                      Global.info = e['title'];
                                      Global.discount = e['price'];
                                      Global.price = e['price2'];
                                      Global.link = e['image'];
                                      Global.name = e['name'];
                                      setState(() {
                                        Map<String, dynamic> myMap = {
                                          'info': Global.info,
                                          'discount': Global.discount,
                                          'price': Global.price,
                                          'link': Global.link,
                                          'name': Global.name,
                                        };
                                        Global.myLikedItem.addAll([myMap]);
                                      });
                                    },
                                    child: const Icon(Icons.favorite_border,
                                        color: Colors.black),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Image.asset(
                                    e['image'],
                                    height: MediaQuery.of(context).size.height * 0.2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.24,
                        width: MediaQuery.of(context).size.width / 2.1,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e['title'],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    e['price'].toString(),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontSize: 23,
                                    ),
                                  ),
                                  Text(
                                    e['price2'].toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey.shade600,
                                      fontSize: 15,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: ElevatedButton(
                                  onPressed: () async {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          content: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  Global.cartIcon = Icons.shopping_cart;
                                                  Global.homeIcon = Icons.home_outlined;
                                                  Global.home = Colors.black;
                                                  Global.cart = Colors.white;
                                                  Navigator.pushNamed(context, 'cart');
                                                });
                                              },
                                              child:
                                              const Text("Added to Cart...")),
                                          backgroundColor: Colors.blue,
                                          behavior: SnackBarBehavior.floating,
                                        ));
                                    Global.info = e['title'];
                                    Global.discount = e['price'];
                                    Global.price = e['price2'];
                                    Global.link = e['image'];
                                    Global.name = e['name'];
                                    Global.value = e['value'];
                                    Global.count = e['count'];
                                    setState(() {
                                      Map<String, dynamic> myMap1 = {
                                        'info': Global.info,
                                        'discount': Global.discount,
                                        'price': Global.price,
                                        'link': Global.link,
                                        'name': Global.name,
                                        'value': Global.value,
                                        'count': Global.count,
                                      };
                                      Global.myCartItem.addAll([myMap1]);
                                    });
                                  },
                                  child: const Text("Add to cart",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            const CircularProgressIndicator(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
