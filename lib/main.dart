import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';
import 'package:test_task/screens/cart_screen.dart';
import 'package:test_task/screens/order_summary.dart';
import 'resources/theme.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData.light().copyWith(
        primaryColor: kColors.white,
        primaryIconTheme: IconThemeData(color: kColors.black),
        primaryTextTheme: ThemeData.light().primaryTextTheme.copyWith(headline6: kTextStyle.appBarTitle),
        //textTheme: TextTheme(headline6: )
      ),
      routes: {
        CartScreen.id: (context) => CartScreen(),
        OrderSummary.id: (context) => OrderSummary(),
      },
      initialRoute: OrderSummary.id,
    );
  }
}
