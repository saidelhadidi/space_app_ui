import 'package:flutter/material.dart';
import 'package:space_app_ui/screens/details_screen.dart';
import 'package:space_app_ui/screens/home_screen.dart';
import 'package:space_app_ui/screens/log_in_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LogInScreen.routeName:(context)=>LogInScreen(),
        HomeScreen.routeName:(context)=>HomeScreen(),
        DetailsScreen.routeName:(context)=>DetailsScreen(),
      },
      initialRoute: LogInScreen.routeName,
    );
  }
}
