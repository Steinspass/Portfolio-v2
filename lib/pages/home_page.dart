import 'package:flutter/material.dart';
import 'package:portfolio/app_widget.dart';

import 'package:portfolio/pages/about_page.dart';
import 'package:portfolio/pages/contact_page.dart';
import 'package:portfolio/pages/header_page.dart';
import 'package:portfolio/pages/projects_page.dart';
import 'package:portfolio/widgets/all_widgets.dart';
import 'package:portfolio/widgets/footer_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:scroll_to_index/scroll_to_index.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  int selectedIndex = 0;
  bool whatTheme = true;
  late AutoScrollController autoScrollController;

  @override
  void initState() { 
    autoScrollController = AutoScrollController();
    super.initState();
    
  }


  Future _scrollToIndex(int index) async {
    await autoScrollController.scrollToIndex(index,
        duration: const Duration(milliseconds: 950 ),
        preferPosition: AutoScrollPosition.begin);
    autoScrollController.highlight(index);
  }

  Widget _wrapScrollTag(int index, Widget child) {
    
    return AutoScrollTag(
      key: ValueKey(index),
      controller: autoScrollController,
      index: index,
      child: child,
    );
  }
 
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
      children: [
        NavigationRail(
          leading: leadingLogo(),
          trailing: trailingTheme(), 
          destinations: navDestination(),
          onDestinationSelected: (int i) {
            _scrollToIndex(i);
            setState(() {
              selectedIndex = i;
            });
          }, 
          selectedIndex: selectedIndex
        ),
        const VerticalDivider(thickness: 1, width: 0.5),
        buildScrollView()
      ],
    ),
    );
    
  }

  Widget buildScrollView(){
    return Expanded(
      child: SingleChildScrollView(
        controller: autoScrollController,
        child: Column(
          children: [
             _wrapScrollTag(0, HeaderPage(onTap: (){
              _scrollToIndex(2);
              setState(() {
                selectedIndex = 2;
              });
            },)),
            _wrapScrollTag(1, const ProjectsPage()),
            _wrapScrollTag(2, AboutMePage(whatTheme: whatTheme,)),
            _wrapScrollTag(3, const ContactPage()),
            FooterWidget(whatTheme: whatTheme,)
          ],
        ),
      ),
    );
  }




  List<NavigationRailDestination> navDestination(){
    return [
      const NavigationRailDestination(padding: EdgeInsets.only(top: 4, bottom: 4) ,selectedIcon: Icon(Icons.home), icon: Icon(Icons.home_outlined), label: TextWidget(text: 'Home', padding: EdgeInsets.all(0), textStyle: null) ),
      const NavigationRailDestination(padding: EdgeInsets.only(top: 4, bottom: 4) ,selectedIcon: Icon(Icons.work), icon:Icon(Icons.work_outline_outlined) ,label: TextWidget(text: 'Projects', padding: EdgeInsets.all(0), textStyle: null)),
      const NavigationRailDestination(padding: EdgeInsets.only(top: 4, bottom: 4) ,selectedIcon: Icon(Icons.history_edu), icon:Icon(Icons.history_edu_outlined) ,label: TextWidget(text: 'About me', padding: EdgeInsets.all(0), textStyle: null)),
      const NavigationRailDestination(padding: EdgeInsets.only(top: 4, bottom: 4) ,selectedIcon: Icon(Icons.contact_mail), icon: Icon(Icons.contact_mail_outlined) ,label: TextWidget(text: 'Contact', padding: EdgeInsets.all(0), textStyle: null)),
    ];
  }

  Widget leadingLogo(){
    return Column(
      children: [
        const SizedBox(
          height: 8,
        ),
        // TextWidget(text: 'NDP', padding: const EdgeInsets.only(top: 8.0), textStyle: Theme.of(context).textTheme.headlineMedium,),
        GestureDetector(
          onTap: (){
            _scrollToIndex(0);
            setState(() {
              selectedIndex = 0;
            });
          },
          child: Image(image: whatTheme ? const AssetImage('assets/n_logo_dark.png') : const AssetImage('assets/n_logo_light.png'), height: 80.0,
                  fit: BoxFit.cover,),
        ),
        SizedBox(
          height: 30.h,
        ),
      ],
    ); 
  }

  Widget trailingTheme(){
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: IconButtonWidget(
            icon: whatTheme
              ? Icons.light_mode
              : Icons.dark_mode,
            onTap: (){
              AppWidget.of(context)!.changeMode();
              setState(() {
                whatTheme = !whatTheme;
              });
            },
          ),
        ),
      ),
    ); 
  }
}


