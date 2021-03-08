import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_first_bank/src/features/data/repositories/api_const.dart';


void requestSearch (String text) async {
  final url = '${api}search/?query/$text';  
    
  final response = await http.get(Uri.parse(url));
  final data = jsonDecode(response.body);

}