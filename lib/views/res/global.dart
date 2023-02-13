import 'package:flutter/material.dart';

class Global{
  static Color home = Colors.black;
  static Color fav = Colors.black;
  static Color cart = Colors.black;
  static Color profile = Colors.black;
  static IconData homeIcon = Icons.home_outlined;
  static IconData favIcon = Icons.favorite_border;
  static IconData cartIcon = Icons.shopping_cart_outlined;
  static IconData profileIcon = Icons.person_outline_rounded;
  static TextEditingController text = TextEditingController();
  static String? title;

  static IconData isVisible = Icons.keyboard_arrow_down_outlined;

  static String info = "";
  static String discount = "";
  static String price = "";
  static String link = "";
  static String name = "";
  static int value = 0;
  static int count = 0;

  static List totalPrice =[];
  static int total = 0;
  static List<Map<String,dynamic>> myLikedItem = [];
  static List<Map<String,dynamic>> myCartItem = [];
}