import 'package:flutter/material.dart';
import 'package:burns_depression_test/page_1.dart';
import 'package:burns_depression_test/page_2.dart';
import 'package:burns_depression_test/page_3.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/page_1',
  routes: {
    '/page_1': (context) => page_1(),
    '/page_2': (context) => page_2(selectedValue: [],),
    '/page_3': (context) => page_3(selectedValue: []),
  },

));

