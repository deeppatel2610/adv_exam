import 'package:adv_exam/provider/home_provider.dart';
import 'package:adv_exam/screens/details_page.dart';
import 'package:adv_exam/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const HomePage(),
          '/details': (context) => const DetailsPage()
        },
      ),
    );
  }
}
