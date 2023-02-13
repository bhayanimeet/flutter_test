import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:test_1/views/res/global.dart';
import 'package:test_1/views/screens/bill.dart';
import 'package:test_1/views/screens/cart.dart';
import 'package:test_1/views/screens/fashion.dart';
import 'package:test_1/views/screens/fav.dart';
import 'package:test_1/views/screens/furniture.dart';
import 'package:test_1/views/screens/grocery.dart';
import 'package:test_1/views/screens/mobile.dart';
import 'package:test_1/views/screens/nothing.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'fav': (context) => const Favorite(),
        'cart': (context) => const Cart(),
        'nothing': (context) => const Nothing(),
        'mobile': (context) => const Mobile(),
        'fashion': (context) => const Fashion(),
        'furniture': (context) => const Furniture(),
        'grocery': (context) => const Grocery(),
        'bill': (context)=> const Bill(),
      },
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Global.home = Colors.white;
    Global.homeIcon = Icons.home_filled;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text("Online Shopping"),
        backgroundColor: const Color(0xff3f736f),
        centerTitle: true,
        elevation: 0,
      ),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 15, right: 10),
                child: Text(
                  "Find your favorite product",
                  style: TextStyle(
                      fontSize: 27,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                child: SizedBox(
                  height: 55,
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
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.pushNamed(context, 'mobile');
                            });
                          },
                          child: myContainer(
                              link: 'assets/images/phone.png', title: "Mobiles"),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.pushNamed(context, 'fashion');
                            });
                          },
                          child: myContainer(
                              link: 'assets/images/3.png', title: "Fashion"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.pushNamed(context, 'furniture');
                            });
                          },
                          child: myContainer(
                              link: 'assets/images/furniture.png',
                              title: "Furniture"),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.pushNamed(context, 'grocery');
                            });
                          },
                          child: myContainer(
                              link: 'assets/images/grocery.png',
                              title: "Grocery"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Hot Deals",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 140,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pushNamed(context, 'mobile');
                        });
                      },
                      child: myContainer(
                          link: 'assets/images/iphone.png', title: "iPhone"),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pushNamed(context, 'furniture');
                        });
                      },
                      child: myContainer(
                          link: 'assets/images/chair2.png', title: "Chair"),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pushNamed(context, 'grocery');
                        });
                      },
                      child: myContainer(
                          link: 'assets/images/juice.png', title: "Juice"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: BottomAppBar(
          color: const Color(0xff3f736f),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    Global.home = Colors.white;
                    Global.fav = Colors.black;
                    Global.cart = Colors.black;
                    Global.profile = Colors.black;
                    Global.homeIcon = Icons.home_filled;
                    Global.favIcon = Icons.favorite_border;
                    Global.cartIcon = Icons.shopping_cart_outlined;
                    Global.profileIcon = Icons.person_outline_rounded;
                    Navigator.pushNamed(context, '/');
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Global.homeIcon, size: 30, color: Global.home),
                    Text("Home",
                        style: TextStyle(fontSize: 18, color: Global.home)),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Global.home = Colors.black;
                    Global.fav = Colors.white;
                    Global.cart = Colors.black;
                    Global.profile = Colors.black;
                    Global.homeIcon = Icons.home_outlined;
                    Global.favIcon = Icons.favorite;
                    Global.cartIcon = Icons.shopping_cart_outlined;
                    Global.profileIcon = Icons.person_outline_rounded;
                    Navigator.pushNamed(context, 'fav');
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Global.favIcon, size: 30, color: Global.fav),
                    Text("Favorite",
                        style: TextStyle(fontSize: 18, color: Global.fav)),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Global.home = Colors.black;
                    Global.fav = Colors.black;
                    Global.cart = Colors.white;
                    Global.profile = Colors.black;
                    Global.homeIcon = Icons.home_outlined;
                    Global.favIcon = Icons.favorite_border;
                    Global.cartIcon = Icons.shopping_cart_sharp;
                    Global.profileIcon = Icons.person_outline_rounded;
                    Navigator.pushNamed(context, 'cart');
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Global.cartIcon, size: 30, color: Global.cart),
                    Text("Cart",
                        style: TextStyle(fontSize: 18, color: Global.cart)),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Global.home = Colors.black;
                    Global.fav = Colors.black;
                    Global.cart = Colors.black;
                    Global.profile = Colors.white;
                    Global.homeIcon = Icons.home_outlined;
                    Global.favIcon = Icons.favorite_border;
                    Global.cartIcon = Icons.shopping_cart_outlined;
                    Global.profileIcon = Icons.person;
                    Navigator.pushNamed(context, 'profile');
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Global.profileIcon, size: 30, color: Global.profile),
                    Text("Profile",
                        style: TextStyle(fontSize: 18, color: Global.profile)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget myContainer({required String? link, required String? title}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Neumorphic(
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
            width: 100,
            color: Colors.grey.shade50,
            height: 100,
            padding: const EdgeInsets.all(7),
            child: Image.asset(
              link!,
              height: 70,
            ),
          ),
        ),
        Text(
          title!,
          style: const TextStyle(
              fontSize: 17, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ],
    );
  }
}
