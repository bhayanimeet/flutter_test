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
    );
  }
}
