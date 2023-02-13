import 'dart:math';
import 'package:flutter/material.dart';
import '../res/global.dart';

class Bill extends StatefulWidget {
  const Bill({Key? key}) : super(key: key);

  @override
  State<Bill> createState() => _BillState();
}

class _BillState extends State<Bill> {
  String total = "";
  Random num = Random();
  DateTime time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bill"),
        centerTitle: true,
        backgroundColor: const Color(0xff3f736f),
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                      flex: 2, child: Image.asset('assets/images/logo.jpg')),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    flex: 8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Online Shopping",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Shop what you wanted",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            padding: const EdgeInsets.only(right: 10),
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(),
                ),
                Expanded(
                  flex: 7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Customer name :  ",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text("manthan lathiya",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Invoice Number :      ",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                              "${num.nextInt(10)}${num.nextInt(10)}${num.nextInt(10)}${num.nextInt(10)}${num.nextInt(10)}${num.nextInt(10)}${num.nextInt(10)}${num.nextInt(10)}",
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Invoice Date :      ",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                          Text("${time.day}/${time.month}/${time.year}",
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(left: 12, right: 25),
            color: Colors.grey.shade400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "No.   Product name",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                Text(
                  "price",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: ListView.builder(
              itemCount: Global.myCartItem.length,
              itemBuilder: (context, i) => Card(
                elevation: 2,
                child: ListTile(
                  title: Text(
                    "${i + 1})     ${Global.myCartItem[i]['name']}",
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  trailing: Text(
                      "₹ ${Global.totalPrice[i].toString()}",
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w600)),
                ),
              ),
            ),
          ),
          Container(
            height: 120,
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Payment Info :",
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ),
                        Row(
                          children: const [
                            Text(
                              "Account :       ",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            Text(
                              "2846 1398 4729",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "A/C name :         ",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            Text(
                              "Meet Bhayani",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "Bank name :   ",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            Text(
                              "Bank Of Baroda",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 120,
                  width: 1,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Sub Total : ",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text("${Global.total}",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Tax : ",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                            Text("18.00%",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                        Container(
                          height: 1,
                          width: 300,
                          color: Colors.black,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Total : ",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                            Text("₹ ${(Global.total * 18 ~/ 100)+(Global.total)}",
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 1,
            width: 395,
            color: Colors.black,
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "4, Gangotri residency, Sudama chowk, Mota varachha, Surat-394101.",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
