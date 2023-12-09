import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infiny_webcom_assignment/view/home_screen.dart';
import 'package:infiny_webcom_assignment/view/news_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        getPages: [
          GetPage(name: "/", page: () => HomeScreen()),
          GetPage(name: "/details", page: () => NewsDetailScreen())
        ],
        title: 'Flutter Demo',
        theme: ThemeData(
          iconButtonTheme: IconButtonThemeData(
              style: ButtonStyle(
                  iconColor: MaterialStatePropertyAll(Colors.black))),
          colorScheme:
              ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 248, 67, 67)),
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}
