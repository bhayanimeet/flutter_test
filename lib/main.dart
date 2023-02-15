import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:test_1/views/screens/bill.dart';
import 'package:test_1/views/screens/cart.dart';
import 'package:test_1/views/screens/category.dart';
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
  int currentIndex = 0;
  IconData home = Icons.home;
  IconData fav = Icons.favorite_border;
  IconData cart = Icons.shopping_cart_outlined;
  PageController pageController = PageController(initialPage: 0,keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (val){
          setState((){
            currentIndex = val;
            if(currentIndex==0){
              home = Icons.home;
              fav = Icons.favorite_border;
              cart = Icons.shopping_cart_outlined;
            }
            else if(currentIndex==1){
              home = Icons.home_outlined;
              fav = Icons.favorite;
              cart = Icons.shopping_cart_outlined;
            }
            else if(currentIndex==2){
              home = Icons.home_outlined;
              fav = Icons.favorite_border;
              cart = Icons.shopping_cart;
            }
          });
        },
        children: const [
          Category(),
          Favorite(),
          Cart(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff3f736f),
        onTap: (val){
          setState(() {
            currentIndex = val;
            pageController.animateToPage(val, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
            if(currentIndex==0){
              home = Icons.home;
              fav = Icons.favorite_border;
              cart = Icons.shopping_cart_outlined;
            }
            else if(currentIndex==1){
              home = Icons.home_outlined;
              fav = Icons.favorite;
              cart = Icons.shopping_cart_outlined;
            }
            else if(currentIndex==2){
              home = Icons.home_outlined;
              fav = Icons.favorite_border;
              cart = Icons.shopping_cart;
            }
          });
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(home,size: 30),label: "Home"),
          BottomNavigationBarItem(icon: Icon(fav,size: 30),label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(cart,size: 30),label: "Cart"),
        ],
        currentIndex: currentIndex,
      ),
    );
  }
}
