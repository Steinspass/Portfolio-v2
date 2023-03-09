import 'package:flutter/material.dart';
import 'package:portfolio/layout/responsive_widget_layout.dart';
import 'package:portfolio/widgets/all_widgets.dart';
import 'package:portfolio/widgets/card_big_projects_widget.dart';
import 'package:portfolio/widgets/card_small_projects_widget.dart';
import 'package:portfolio/widgets/chip_tech_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher_string.dart';


class ProjectsPage extends StatefulWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        desktopL: ProjectsPageDesktop(),
        tabletL:  ProjectsPageTablet(),
        mobileL: ProjectsPageMobile()
    );
  }
}

class ProjectsPageDesktop extends StatefulWidget {
  const ProjectsPageDesktop({Key? key}) : super(key: key);

  @override
  State<ProjectsPageDesktop> createState() => _ProjectsPageDesktopState();
}

class _ProjectsPageDesktopState extends State<ProjectsPageDesktop> {

  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: 100.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.h,),
          TextWidget(isSelectable: true, text: '// Projects', padding: null, textStyle: Theme.of(context).textTheme.displayMedium,),
          SizedBox(height: 3.h,),
          TextWidget(isSelectable: true, text: 'Main Projects', padding: null, textStyle: Theme.of(context).textTheme.displaySmall,),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(width: 4.w,),
                CardBigProjectWidget( keywords: bunkalistKeys, webVersion: false, description: labelBunkalistProject, title: 'Bunkalist', onTap: (){}, onTapAndroid: () { launchUrlString("https://play.google.com/store/apps/details?id=com.bunkalogic.bunkalist"); }, onTapCode: () { launchUrlString("https://github.com/bunkalogic/BunkaList-Flutter-Version"); },),
                SizedBox(width: 2.w,),
                CardBigProjectWidget(keywords: weMakerKeys, webVersion: true, description: labelWeMakerProject, title: 'Desicion Maker Pros & Cons', onTap: (){}, onTapAndroid: () { launchUrlString("https://play.google.com/store/apps/details?id=com.bunkalogic.desicionmakerapp"); }, onTapCode: () { launchUrlString("https://github.com/Steinspass/desicion_maker"); }, onTapWeb: (){ launchUrlString("https://desicionmakerapp.web.app"); }, ),
                // SizedBox(width: 1.w,),
              ],
          )),
          TextWidget(isSelectable: true, text: 'Small Projects', padding: null, textStyle: Theme.of(context).textTheme.displaySmall,),
          SizedBox(height: 3.h,),
          Expanded(
            flex: 1,
            child: Center(
              child: Scrollbar(
                      controller: scrollController,
                      child: ListView(
                        controller: scrollController,
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(width: 2.w,),
                          CardSmallProjectWidget(description: labelSmallProject1, title: 'Portfolio v2', onTap: (){launchUrlString("https://github.com/Steinspass/Portfolio-v2");} ),
                          CardSmallProjectWidget(description:labelSmallProject2, title: 'Flask Neuronal Network API', onTap: (){launchUrlString("https://github.com/Steinspass/flask_neural_network_api");} ),
                          CardSmallProjectWidget(description:labelSmallProject3, title: 'Sketch Generator App', onTap: (){launchUrlString("https://github.com/Steinspass/sketch_generator_shoes_app");} ),
                          CardSmallProjectWidget(description:labelSmallProject4, title: 'Text Sentiment Analysis App', onTap: (){launchUrlString("https://github.com/Steinspass/sentiment_analysis_app");} ),
                        ],
                      ),
                    ),
            ),
            ),
          SizedBox(height: 3.h,),
        ],
      ),
    );
  }
}


class ProjectsPageTablet extends StatefulWidget {
  const ProjectsPageTablet({Key? key}) : super(key: key);

  @override
  State<ProjectsPageTablet> createState() => _ProjectsPageTabletState();
}

class _ProjectsPageTabletState extends State<ProjectsPageTablet> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230.h,
      width: 100.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.h,),
          TextWidget(isSelectable: true, text: '// Projects', padding: null, textStyle: Theme.of(context).textTheme.displayMedium,),
          SizedBox(height: 3.h,),
          TextWidget(isSelectable: true, text: 'Main Projects', padding: null, textStyle: Theme.of(context).textTheme.displaySmall,),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                // SizedBox(width: 1.h,),
                CardBigProjectWidget(keywords: bunkalistKeys, width: 80.w, height: 75.h, webVersion: false, description: labelBunkalistProject, title: 'Bunkalist', onTap: (){},onTapAndroid: () { launchUrlString("https://play.google.com/store/apps/details?id=com.bunkalogic.bunkalist"); }, onTapCode: () { launchUrlString("https://github.com/bunkalogic/BunkaList-Flutter-Version");}),
                SizedBox(height: 3.h,),
                CardBigProjectWidget(keywords: weMakerKeys, width: 80.w, height: 75.h, webVersion: true, description: labelWeMakerProject, title: 'Desicion Maker Pros & Cons', onTap: (){},onTapAndroid: () { launchUrlString("https://play.google.com/store/apps/details?id=com.bunkalogic.desicionmakerapp"); }, onTapCode: () { launchUrlString("https://github.com/Steinspass/desicion_maker"); }, onTapWeb: (){ launchUrlString("https://desicionmakerapp.web.app"); },),
                // SizedBox(width: 0.5.w,),
              ],
          )),
          SizedBox(height: 2.h,),
          TextWidget(isSelectable: true, text: 'Small Projects', padding: null, textStyle: Theme.of(context).textTheme.displaySmall,),
          SizedBox(height: 3.h,),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                // SizedBox(width: 1.h,),
                Expanded(
                  child: Row(
                    children: [
                      SizedBox(width: 4.w,),
                      Expanded(child: CardSmallProjectWidget(width: 35.w, height: 35.h, description:labelSmallProject1 ,title: 'Portfolio v2', onTap: (){launchUrlString("https://github.com/Steinspass/Portfolio-v2");} )),
                      Expanded(child: CardSmallProjectWidget(width: 35.w, height: 35.h, description:labelSmallProject2 ,title: 'Flask Neuronal Network API', onTap: (){launchUrlString("https://github.com/Steinspass/flask_neural_network_api");} )),
                      SizedBox(width: 4.w,),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(children: [
                    SizedBox(width: 4.w,),
                    Expanded(child: CardSmallProjectWidget(width: 35.w, height: 35.h, description:labelSmallProject3 ,title: 'Sketch Generator App', onTap: (){launchUrlString("https://github.com/Steinspass/sketch_generator_shoes_app");} )),
                    Expanded(child: CardSmallProjectWidget(width: 35.w, height: 35.h, description:labelSmallProject4 ,title: 'Text Sentiment Analysis App', onTap: (){launchUrlString("https://github.com/Steinspass/sentiment_analysis_app");} )),
                    SizedBox(width: 4.w,),
                  ],),
                ),
                SizedBox(width: 0.8.w,),
                // CardSmallProjectWidget(description:'Mollit ullamco laborum mollit ea tempor anim excepteur' ,title: 'MBTI Test App (On working)', onTap: (){} ),
                // SizedBox(width: 0.5.w,)
              ],
          )),
          SizedBox(height: 3.h,),
        ],
      ),
    );
  }
}


class ProjectsPageMobile extends StatefulWidget {
  const ProjectsPageMobile({Key? key}) : super(key: key);

  @override
  State<ProjectsPageMobile> createState() => _ProjectsPageMobileState();
}

class _ProjectsPageMobileState extends State<ProjectsPageMobile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 275.h,
      width: 100.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.h,),
          TextWidget(isSelectable: true, text: '// Projects', padding: null, textStyle: Theme.of(context).textTheme.displayMedium,),
          SizedBox(height: 3.h,),
          TextWidget(isSelectable: true, text: 'Main Projects', padding: null, textStyle: Theme.of(context).textTheme.displaySmall,),
          SizedBox(height: 2.h,),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                // SizedBox(width: 1.h,),
                CardBigProjectWidget( keywords: bunkalistKeys, isMobile: true, width: 72.w, height: 60.h, webVersion: false, description: labelBunkalistProject, title: 'Bunkalist', onTap: (){},onTapAndroid: () { launchUrlString("https://play.google.com/store/apps/details?id=com.bunkalogic.bunkalist"); }, onTapCode: () { launchUrlString("https://github.com/bunkalogic/BunkaList-Flutter-Version");}),
                SizedBox(height: 3.h,),
                CardBigProjectWidget( keywords: weMakerKeys, isMobile: true, width: 72.w, height: 60.h, webVersion: true, description: labelWeMakerProject , title: 'Desicion Maker Pros & Cons', onTap: (){},onTapAndroid: () { launchUrlString("https://play.google.com/store/apps/details?id=com.bunkalogic.desicionmakerapp"); }, onTapCode: () { launchUrlString("https://github.com/Steinspass/desicion_maker"); }, onTapWeb: (){ launchUrlString("https://desicionmakerapp.web.app"); },),
                // SizedBox(width: 0.5.w,),
              ],
          )),
          // sSizedBox(height: 2.h,),
          TextWidget(isSelectable: true, text: 'Small Projects', padding: null, textStyle: Theme.of(context).textTheme.displaySmall,),
          SizedBox(height: 3.h,),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                // SizedBox(width: 1.h,),
                // SizedBox(width: 4.w,),
                Expanded(child: CardSmallProjectWidget(width: 72.w, height: 24.h, description:labelSmallProject1, title: 'Portfolio v2', onTap: (){launchUrlString("https://github.com/Steinspass/Portfolio-v2");} )),
                Expanded(child: CardSmallProjectWidget(width: 72.w, height: 24.h, description:labelSmallProject2, title: 'Flask Neuronal Network API', onTap: (){launchUrlString("https://github.com/Steinspass/flask_neural_network_api");} )),
                Expanded(child: CardSmallProjectWidget(width: 72.w, height: 24.h, description:labelSmallProject3, title: 'Sketch Generator App', onTap: (){launchUrlString("https://github.com/Steinspass/sketch_generator_shoes_app");} )),
                Expanded(child: CardSmallProjectWidget(width: 72.w, height: 24.h, description:labelSmallProject4, title: 'Text Sentiment Analysis App', onTap: (){launchUrlString("https://github.com/Steinspass/sentiment_analysis_app");} )),
                SizedBox(height: 3.h,),
              ],
          )),
          SizedBox(height: 3.h,),
        ],
      ),
    );
  }
}



final List<Widget> bunkalistKeys = [
  ChipTechWidget(title: 'TDD', onTap: (){launchUrlString("https://resocoder.com/2019/08/27/flutter-tdd-clean-architecture-course-1-explanation-project-structure/");},),
  ChipTechWidget(title: 'Bloc', onTap: (){launchUrlString("https://pub.dev/packages/bloc");},),
  ChipTechWidget(title: 'Firebase', onTap: (){launchUrlString("https://pub.dev/publishers/firebase.google.com/packages");},),
  ChipTechWidget(title: 'TMDB Api', onTap: (){launchUrlString("https://www.themoviedb.org/documentation/api");},),
  ChipTechWidget(title: 'Admob', onTap: (){launchUrlString("https://pub.dev/packages/admob_flutter");},),
  ChipTechWidget(title: 'Google Sign In', onTap: (){launchUrlString("https://pub.dev/packages/google_sign_in");},),
  ChipTechWidget(title: 'Youtube Api', onTap: (){launchUrlString("https://developers.google.com/youtube/v3/");},),
  ChipTechWidget(title: 'Purchases', onTap: (){launchUrlString("https://pub.dev/packages/purchases_flutter");},),
  ChipTechWidget(title: 'Mockito', onTap: (){launchUrlString("https://pub.dev/packages/mockito");},),
  
];


final List<Widget> weMakerKeys = [
  ChipTechWidget(title: 'DDD', onTap: (){launchUrlString("https://resocoder.com/2020/03/09/flutter-firebase-ddd-course-1-domain-driven-design-principles/");},),
  ChipTechWidget(title: 'Material 3', onTap: (){launchUrlString("https://m3.material.io/");},),
  ChipTechWidget(title: 'Bloc', onTap: (){launchUrlString("https://pub.dev/packages/bloc");},),
  ChipTechWidget(title: 'Firebase', onTap: (){launchUrlString("https://pub.dev/publishers/firebase.google.com/packages");},),
  ChipTechWidget(title: 'Injectable', onTap: (){launchUrlString("https://pub.dev/packages/injectable");},),
  ChipTechWidget(title: 'Freezed', onTap: (){launchUrlString("https://pub.dev/packages/freezed");},),
  ChipTechWidget(title: 'Hooks', onTap: (){launchUrlString("https://pub.dev/packages/flutter_hooks");},),
  ChipTechWidget(title: 'Build Runner', onTap: (){launchUrlString("https://pub.dev/packages/build_runner");},),
  ChipTechWidget(title: 'Admob', onTap: (){launchUrlString("https://pub.dev/packages/admob_flutter");},),
  ChipTechWidget(title: 'Google Sign In', onTap: (){launchUrlString("https://pub.dev/packages/google_sign_in");},),
  ChipTechWidget(title: 'Purchases', onTap: (){launchUrlString("https://pub.dev/packages/purchases_flutter");},),
  
  
];


const String labelSmallProject1 = "Second version of my portfolio using custom minimalistic Material 3 for theme.";
const String labelSmallProject2 = "Python using Flask, neural network model based on the pix2pix model.";
const String labelSmallProject3 = "App where you can draw a sketch and calling an API with a pix2pix model is capable of returning a realistic image.";
const String labelSmallProject4 = "App that from the text using a natural language processing is able to identify the sentiments in the text.";

const String labelBunkalistProject = 
'''
Bunkalist is a manager of the movies, series and anime that you have seen or are watching to have the ordered in lists. It also allows you to find or discover new movies, series and anime to watch. \n
This has been my biggest personal project in last years with which I learned what it is to develop and maintain a real app. In which I learned to create design style, to use software design pattern the Test Driven Development (TDD), the process of optimizing the file of a mobile application in an application store (ASO), multilanguage support.
''';
const String labelWeMakerProject = 
'''
Desicion Maker is an application to create a list of pros and cons to make a decision. Each item on the list has a weight or importance and suggests the most appropriate decision to make. \n
This is a new personal project I'm working on, adding some new things like Material 3 for the theme of the application, a Domain Driven Design (DDD) software pattern, using Build Runner to generate files with Freezed Package to generate the data classes and automate the tedious process of modeling objects and create the web version of the application with responsive design.
''';
