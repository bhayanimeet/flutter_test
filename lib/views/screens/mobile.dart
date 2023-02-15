import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../res/global.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  List<Map<String, dynamic>> myMobileList = [
    {
      'image': 'assets/images/v20.png',
      'name': 'Vivo V20',
      'title': 'Vivo V20 (Chromatic Blue, 6GB RAM, 128GB Storage)',
      'price': "₹ 23,499",
      'price2': "₹ 24,999",
      'value': 23499,
      'count': 0,
      'var': false,
    },
    {
      'image': 'assets/images/samsung.png',
      'name': 'Samsung Galaxy S22 Ultra 5G',
      'title': 'Samsung Galaxy S22 Ultra 5G (12GB RAM, 256GB Storage)',
      'price': '₹ 1,09,999',
      'price2': '₹ 1,31,999',
      'value': 109999,
      'count': 0,
      'var': false,
    },
    {
      'image': 'assets/images/oneplus.png',
      'name': 'OnePlus Nord N200 5G',
      'title': 'OnePlus Nord N200 5G (6GB RAM, 128GB Storage)',
      'price': "₹ 28,499",
      'price2': "₹ 34,999",
      'value': 28499,
      'count': 0,
      'var': false,
    },
    {
      'image': 'assets/images/oppo.png',
      'name': 'Oppo Reno 5 Pro 5G',
      'title': 'Oppo Reno 5 Pro 5G (8GB RAM, 256GB Storage)',
      'price': '₹ 30,000',
      'price2': '₹ 33,499',
      'value': 30000,
      'count': 0,
      'var': false,
    },
    {
      'image': 'assets/images/iphone.png',
      'name': 'iPhone 14 pro max',
      'title': 'iPhone 14 pro max (128GB) - Gold',
      'price': "₹ 1,39,999",
      'price2': "₹ 1,49,999",
      'value': 23499,
      'count': 0,
      'var': false,
    },
    {
      'image': 'assets/images/iqoo.png',
      'name': 'iQOO Z6 Lite 5G',
      'title': 'iQOO Z6 Lite 5G (6GB RAM, 256GB Storage)',
      'price': '₹ 13,499',
      'price2': '₹ 15,999',
      'value': 13499,
      'count': 0,
      'var': false,
    },
    {
      'image': 'assets/images/redmi.png',
      'name': 'Redmi 11 prime 5G',
      'title': 'Redmi 11 prime 5G (Thunder black, 4GB RAM, 64GB Storage)',
      'price': "₹ 28,499",
      'price2': "₹ 34,999",
      'value': 28499,
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
            ...myMobileList.map(
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
                                    onTap: () {
                                      if(e['var']==false){
                                        e['var'] = true;
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content: GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(context,'fav');
                                            },
                                            child: const Text("Added to favorite..."),
                                          ),
                                          backgroundColor: Colors.blue,
                                          behavior: SnackBarBehavior.floating,
                                        ),);
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
                                      }
                                      else if (e['var'] == true) {
                                        e['var'] = false;
                                      }
                                    },
                                    child: (e['var'] == false)
                                        ? const Icon(
                                            Icons.favorite_border,
                                            color: Colors.black,
                                          )
                                        : const Icon(
                                            Icons.favorite,
                                            color: Colors.pink,
                                          ),
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
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.24,
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
                                  fontSize: 18,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
