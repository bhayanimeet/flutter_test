import 'package:flutter/material.dart';

import '../res/global.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Favorite list",
        ),
        backgroundColor: const Color(0xff3f736f),
        centerTitle: true,
        elevation: 0,
      ),
      body: (Global.myLikedItem.isEmpty)
          ? Center(
        child: Stack(
          alignment: const Alignment(0, 1.1),
          children: [
            Image.asset(
              'assets/images/like.jpg',
              scale: 0.8,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/', (route) => false);
                Global.fav = Colors.black;
                Global.favIcon = Icons.favorite_border;
              },
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(5),
                backgroundColor:
                MaterialStateProperty.all(const Color(0xff3f736f)),
              ),
              child: const Text(
                "Explore things",
              ),
            ),
          ],
        ),
      )
          : ListView.builder(
        itemCount: Global.myLikedItem.length,
        itemBuilder: (context, i) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 3,
            child: ListTile(
              isThreeLine: true,
              leading: Image.asset(Global.myLikedItem[i]['link']),
              title: Text(
                "${Global.myLikedItem[i]['name']}",
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                "\n${Global.myLikedItem[i]['discount']}",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade600,
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      Global.myLikedItem.removeAt(i);
                    });
                  },
                  child: Icon(Icons.delete_rounded, color: Colors.grey.shade700, size: 30),
                ),
              ),
            ),
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
}
