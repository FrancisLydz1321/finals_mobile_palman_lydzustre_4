import 'package:finals_mobile_palman_lydzustre_4/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(
    child: MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
