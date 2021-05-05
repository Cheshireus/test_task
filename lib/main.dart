import 'package:flutter/material.dart';

import 'package:test_task/screens/cart_screen.dart';
import 'resources/theme.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: kColors.white,
        primaryIconTheme: IconThemeData(color: kColors.black),
        primaryTextTheme: ThemeData.light()
            .primaryTextTheme
            .copyWith(headline6: kTextStyle.appBarTitle),
        //textTheme: TextTheme(headline6: )
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        CartScreen.id: (context) => CartScreen(),
      },
      initialRoute: CartScreen.id,
    );
  }
}
