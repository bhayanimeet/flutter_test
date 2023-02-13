import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../res/global.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Cart items",
        ),
        backgroundColor: const Color(0xff3f736f),
        centerTitle: true,
        elevation: 0,
      ),
      body: (Global.myCartItem.isEmpty)
          ? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/cart.jpg', scale: 0.7),
            const SizedBox(height: 15),
            const Text(
              "Your cart is empty!!",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                Global.cart = Colors.black;
                Global.cartIcon = Icons.shopping_cart_outlined;
              },
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(5),
                backgroundColor: MaterialStateProperty.all(const Color(0xff3f736f)),
              ),
              child: const Text(
                "Explore things",
              ),
            ),
          ],
        ),
      )
          : Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView.builder(
            itemCount: Global.myCartItem.length,
            itemBuilder: (context, i) => Card(
              elevation: 3,
              child: ListTile(
                isThreeLine: true,
                leading: Image.asset(Global.myCartItem[i]['link'],
                    height: 150),
                title: Text(
                  "${Global.myCartItem[i]['name']}\n",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                contentPadding: const EdgeInsets.all(10),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                          child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (Global.myCartItem[i]['count'] <= 1) {
                                    Global.myCartItem[i]['count']--;
                                    Global.myCartItem.removeAt(i);
                                  } else {
                                    Global.myCartItem[i]['count']--;
                                  }
                                  Global.totalPrice.removeAt(i);
                                  print(Global.totalPrice);
                                });
                              },
                              child: const Icon(Icons.remove)),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                          child: Text(Global.myCartItem[i]['count'].toString()),
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                          child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  Global.myCartItem[i]['count']++;
                                });
                                Global.totalPrice.add(Global.myCartItem[i]['value'] * Global.myCartItem[i]['count']);
                                print(Global.totalPrice);
                              },
                              child: const Icon(Icons.add)),
                        ),
                      ],
                    ),
                    Text(
                      "${Global.myCartItem[i]['discount']}",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  for(int i=0 ; i<Global.totalPrice.length ; i++){
                    Global.total = (Global.total + Global.totalPrice[i]).toInt();
                  }
                  Navigator.pushNamed(context, 'bill');
                });
              },
              child: const Text("Invoice")),
        ],
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
                    Text("Home", style: TextStyle(fontSize: 18, color: Global.home)),
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
                    Text("Profile", style: TextStyle(fontSize: 18, color: Global.profile)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}