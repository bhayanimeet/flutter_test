import 'package:flutter/material.dart';

class Global{
  static TextEditingController text = TextEditingController();
  static String? title;

  static String info = "";
  static String discount = "";
  static String price = "";
  static String link = "";
  static String name = "";
  static int value = 0;
  static int count = 0;

  static List totalPrice = [];
  static int total = 0;
  static List<Map<String,dynamic>> myLikedItem = [];
  static List<Map<String,dynamic>> myCartItem = [];
}