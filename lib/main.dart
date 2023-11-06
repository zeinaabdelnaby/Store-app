import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_app/custom.dart';
import 'package:store_app/screens/home_page.dart';
import 'package:store_app/screens/update_product_page.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) {
          return Custom();
        },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            HomePage.id: (context) => HomePage(),
            UpdateProductPage.id: (context) => UpdateProductPage(),
          },
          initialRoute: HomePage.id,
        ));
  }
}