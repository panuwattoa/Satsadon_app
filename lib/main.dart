import 'package:flutter/material.dart';
import 'package:satsadon_app/constants.dart';
import 'package:satsadon_app/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Satsadon App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroubClor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor, fontFamily: 'SukhumvitSet'),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
