import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qtec_work_demo/provider/product_details_provider.dart';
import 'package:qtec_work_demo/provider/product_provider.dart';
import 'package:qtec_work_demo/screen/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProductDetailsProvider(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SearchPage(),
      ),
    );
  }
}
