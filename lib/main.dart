import 'package:flutter/material.dart';

import 'package:my_first_bank/src/features/ui/login_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My first bank',
      home: LoginPage()
    );
  }
}