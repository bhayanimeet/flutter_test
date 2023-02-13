import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../res/global.dart';

class Grocery extends StatefulWidget {
  const Grocery({Key? key}) : super(key: key);

  @override
  State<Grocery> createState() => _GroceryState();
}

class _GroceryState extends State<Grocery> {
  List<Map<String, dynamic>> myGroceryList = [
    {
      'image': 'assets/images/almond.png',
      'name': 'Plain Almonds',
      'title': '100% natural 200 gm Almonds',
      'price': "₹ 700",
      'price2': "₹ 800",
      'value': 700,
      'count': 0,
    },
    {
      'image': 'assets/images/juice.png',
      'name': 'Real Mosambi juice',
      'title': 'Real Mosambi juice with fruit goodness',
      'price': '₹ 150',
      'price2': '₹ 180',
      'value': 150,
      'count': 0,
    },
    {
      'image': 'assets/images/butter.jpg',
      'name': 'Alpino Peanut butter',
      'title': 'Alpino peanut butter with 1 kg net weight',
      'price': "₹ 1,499",
      'price2': "₹ 1,799",
      'value': 1499,
      'count': 0,
    },
    {
      'image': 'assets/images/daawat.jpg',
      'name': 'Basmati rice',
      'title': 'Daawat traditional basmati rice',
      'price': '₹ 600',
      'price2': '₹ 799',
      'value': 600,
      'count': 0,
    },
    {
      'image': 'assets/images/dark.png',
      'name': 'Sunfeast dark fantasy choco fills',
      'title': 'Sunfeast dark fantasy choco fills',
      'price': "₹ 50",
      'price2': "₹ 60",
      'value': 50,
      'count': 0,
    },
    {
      'image': 'assets/images/besan.png',
      'name': 'Fortune Besan flour',
      'title': 'Fortune Besan flour made from 100% chana dal',
      'price': '₹ 50',
      'price2': '₹ 52',
      'value': 50,
      'count': 0,
    },
    {
      'image': 'assets/images/maggie.jpg',
      'name': 'Maggi 2-minute noodles',
      'title': 'Maggi 2-minute noodles with quality ingredients',
      'price': "₹ 25",
      'price2': "₹ 27",
      'value': 25,
      'count': 0,
    },
  ];
  bool visible = false;
  double value = 200000;
  Color track = Colors.white;
  Color disTrack = Colors.white;
  Color thumb = Colors.white;

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
                if (Global.title == "phone" ||
                    Global.title == "Phone" ||
                    Global.title == "mobile" ||
                    Global.title == "Mobile") {
                  Navigator.pushNamed(context, 'mobile');
                } else if (Global.title == "fashion" ||
                    Global.title == "Fashion") {
                  Navigator.pushNamed(context, 'fashion');
                } else if (Global.title == "furniture" ||
                    Global.title == "Furniture") {
                  Navigator.pushNamed(context, 'furniture');
                } else if (Global.title == "grocery" ||
                    Global.title == "Grocery") {
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
            ...myGroceryList.map(
                  (e) => Container(
                height: MediaQuery.of(context).size.height * 0.26,
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
                          height: MediaQuery.of(context).size.height * 0.24,
                          width: MediaQuery.of(context).size.width / 2.4,
                          color: Colors.grey.shade50,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: GestureDetector(
                                    onTap: () async {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                Global.favIcon = Icons.favorite;
                                                Global.homeIcon =
                                                    Icons.home_outlined;
                                                Global.home = Colors.black;
                                                Global.fav = Colors.white;
                                                Navigator.pushNamed(
                                                    context, 'fav');
                                              });
                                            },
                                            child: const Text(
                                                "Added to favorite...")),
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
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    e['image'],
                                    height: MediaQuery.of(context).size.height *
                                        0.18,
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
                        height: MediaQuery.of(context).size.height * 0.23,
                        width: MediaQuery.of(context).size.width / 2.1,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 18),
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
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              Global.cartIcon =
                                                  Icons.shopping_cart;
                                              Global.homeIcon =
                                                  Icons.home_outlined;
                                              Global.home = Colors.black;
                                              Global.cart = Colors.white;
                                              Navigator.pushNamed(
                                                  context, 'cart');
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
                                  child: const Text(
                                    "Add to cart",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  ),
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
