import 'package:flutter/material.dart';
import 'package:portfolio/pages/home_page.dart';
import 'package:portfolio/theme/theme_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();


  static _AppWidgetState? of(BuildContext context) => context.findAncestorStateOfType<_AppWidgetState>();
}

class _AppWidgetState extends State<AppWidget> {
  
  bool themeMode = true;
  
  void changeMode(){
    setState(() {
      themeMode = !themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {

    return ResponsiveSizer(
      builder:(context, orientation, deviceType){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeApp(themeMode),
          title: 'Naim Dev Portfolio',
          home: const HomePage(),
        );
      }
    );

  }
}