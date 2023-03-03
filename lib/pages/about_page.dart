import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/layout/responsive_widget_layout.dart';
import 'package:portfolio/widgets/all_widgets.dart';
import 'package:portfolio/widgets/card_icon_tech_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class AboutMePage extends StatefulWidget {
  final bool whatTheme;

  const AboutMePage({
    Key? key,
    required this.whatTheme
  }) : super(key: key);

  @override
  State<AboutMePage> createState() => _AboutMePageState();
}

class _AboutMePageState extends State<AboutMePage> {
  @override
  Widget build(BuildContext context) {

    return responsiveWidgetLayout(
        context,
        desktopL: AboutMePageDesktop(whatTheme: widget.whatTheme),
        tabletL:  AboutMePageTablet(whatTheme: widget.whatTheme),
        mobileL:  AboutMePageMobile(whatTheme: widget.whatTheme)
    );


    
  }
}


class AboutMePageDesktop extends StatefulWidget {
  final bool whatTheme;

  const AboutMePageDesktop({
    Key? key,
    required this.whatTheme
  }) : super(key: key);

  @override
  State<AboutMePageDesktop> createState() => _AboutMePageDesktopState();
}

class _AboutMePageDesktopState extends State<AboutMePageDesktop> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: 100.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.h,),
          TextWidget(isSelectable: true, text: '// About me', padding: null, textStyle: Theme.of(context).textTheme.displayMedium,),
          SizedBox(height: 8.h,),
          SizedBox(width: 5.w,),
          Expanded( flex: 2,  child: Column(
            children:[
            TextWidget(isSelectable: true, text: 'Info', padding: null, textStyle: Theme.of(context).textTheme.displaySmall,),
            SizedBox(height: 2.h,),
            SizedBox(
              width: 35.w,
              child: TextWidget(
              isSelectable: true, 
              text: labelAboutMe,
              padding: null, textStyle: Theme.of(context).textTheme.bodyLarge,),
            ),
            ]
          )),
          SizedBox(width: 25.w, child: const Divider(thickness: 0.5),),
          SizedBox(height: 4.h,),
          TextWidget(isSelectable: true, text: 'Tech', padding: null, textStyle: Theme.of(context).textTheme.displaySmall,),
          SizedBox(height: 4.h,),
          Expanded( flex: 1, child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[              
              Column(
                children: [
                  Align(alignment: Alignment.topCenter, child: TextWidget(isSelectable: true, text: '> Mostly Used', padding: null, textStyle: Theme.of(context).textTheme.headlineMedium,)),
                  SizedBox(height: 2.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,  
                    children: [
                      CardIconTechWidget(whatTheme: widget.whatTheme, title: 'Flutter', icon: BoxIcons.bxl_flutter, onTap: (){},),
                      SizedBox(width: 2.w,),
                      CardIconTechWidget(whatTheme: widget.whatTheme, title: 'Firebase', icon: BoxIcons.bxl_firebase, onTap: (){},),
                      SizedBox(width: 2.w,),
                      CardIconTechWidget(whatTheme: widget.whatTheme, title: 'Git', icon: BoxIcons.bxl_git, onTap: (){},),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 6.w,),
              Column(
                children: [
                  Align(alignment: Alignment.topCenter, child: TextWidget(isSelectable: true, text: '> Somely Used', padding: null, textStyle: Theme.of(context).textTheme.headlineMedium,)),
                  SizedBox(height: 2.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,  
                    children: [
                      CardIconTechWidget(whatTheme: widget.whatTheme, title: 'Python', icon: BoxIcons.bxl_python, onTap: (){},),
                      SizedBox(width: 2.w,),
                      CardIconTechWidget(whatTheme: widget.whatTheme, title: 'JavaScript', icon: BoxIcons.bxl_javascript, onTap: (){},),
                      SizedBox(width: 2.w,),
                      CardIconTechWidget(whatTheme: widget.whatTheme, title: 'CSS', icon: BoxIcons.bxl_css3, onTap: (){},),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 6.w,),
              Column(
                children: [
                  Align(alignment: Alignment.topCenter, child: TextWidget(isSelectable: true, text: '> Want Learn', padding: null, textStyle: Theme.of(context).textTheme.headlineMedium,)),
                  SizedBox(height: 2.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,  
                    children: [
                      CardIconTechWidget(whatTheme: widget.whatTheme, title: 'React', icon: BoxIcons.bxl_react, onTap: (){},),
                      SizedBox(width: 2.w,),
                      CardIconTechWidget(whatTheme: widget.whatTheme, title: 'SASS', icon: BoxIcons.bxl_sass, onTap: (){},),
                      SizedBox(width: 2.w,),
                      CardIconTechWidget(whatTheme: widget.whatTheme, title: 'AWS', icon: BoxIcons.bxl_aws, onTap: (){},),
                    ],
                  ),
                ],
              )
            ]
          )),

          SizedBox(width: 5.w,)
        ],
      ),
    );
  }
}


class AboutMePageTablet extends StatefulWidget {
  
  final bool whatTheme;

  const AboutMePageTablet({
    Key? key,
    required this.whatTheme
  }) : super(key: key);

  @override
  State<AboutMePageTablet> createState() => _AboutMePageTabletState();
}

class _AboutMePageTabletState extends State<AboutMePageTablet> {
  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      height: 100.h,
      width: 100.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.h,),
          TextWidget(isSelectable: true, text: '// About me', padding: null, textStyle: Theme.of(context).textTheme.displayMedium,),
          SizedBox(height: 10.h,),
          Expanded(
            child: Row(
              children: [
                SizedBox(width: 5.w,),
                Expanded(child: Column(
                  children:[
                  TextWidget(isSelectable: true, text: 'Info', padding: null, textStyle: Theme.of(context).textTheme.displaySmall,),
                  SizedBox(height: 4.h,),
                  SizedBox(
                    width: 80.w,
                    child: TextWidget(
                    isSelectable: true, 
                    text: labelAboutMe,
                    padding: null, textStyle: Theme.of(context).textTheme.bodyLarge,),
                  ),
                  ]
                )),
                Expanded(child: Column(
                  children:[
                    TextWidget(isSelectable: true, text: 'Tech', padding: null, textStyle: Theme.of(context).textTheme.displaySmall,),
                    SizedBox(height: 4.h,),
                    Align(alignment: Alignment.topCenter, child: TextWidget(isSelectable: true, text: '> Mostly Used', padding: null, textStyle: Theme.of(context).textTheme.headlineMedium,)),
                    SizedBox(height: 2.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,  
                      children: [
                        CardIconTechWidget( hIcon: 6.h, wIcon: 6.w, whatTheme: widget.whatTheme, title: 'Flutter', icon: BoxIcons.bxl_flutter, onTap: (){},),
                        SizedBox(width: 1.w,),
                        CardIconTechWidget( hIcon: 6.h, wIcon: 6.w, whatTheme: widget.whatTheme, title: 'Firebase', icon: BoxIcons.bxl_firebase, onTap: (){},),
                        SizedBox(width: 1.w,),
                        CardIconTechWidget( hIcon: 6.h, wIcon: 6.w, whatTheme: widget.whatTheme, title: 'Git', icon: BoxIcons.bxl_git, onTap: (){},),
                      ],
                    ),
                    SizedBox(height: 4.h,),
                    Align(alignment: Alignment.topCenter, child: TextWidget(isSelectable: true, text: '> Somely Used', padding: null, textStyle: Theme.of(context).textTheme.headlineMedium,)),
                    SizedBox(height: 2.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,  
                      children: [
                        CardIconTechWidget( hIcon: 6.h, wIcon: 6.w, whatTheme: widget.whatTheme, title: 'Python', icon: BoxIcons.bxl_python, onTap: (){},),
                        SizedBox(width: 1.w,),
                        CardIconTechWidget( hIcon: 6.h, wIcon: 6.w, whatTheme: widget.whatTheme, title: 'JavaScript', icon: BoxIcons.bxl_javascript, onTap: (){},),
                        SizedBox(width: 1.w,),
                        CardIconTechWidget( hIcon: 6.h, wIcon: 6.w, whatTheme: widget.whatTheme, title: 'CSS', icon: BoxIcons.bxl_css3, onTap: (){},),
                      ],
                    ),
                    SizedBox(height: 4.h,),
                    Align(alignment: Alignment.topCenter, child: TextWidget(isSelectable: true, text: '> Want Learn', padding: null, textStyle: Theme.of(context).textTheme.headlineMedium,)),
                    SizedBox(height: 2.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,  
                      children: [
                        CardIconTechWidget( hIcon: 6.h, wIcon: 6.w, whatTheme: widget.whatTheme, title: 'React', icon: BoxIcons.bxl_react, onTap: (){},),
                        SizedBox(width: 2.w,),
                        CardIconTechWidget( hIcon: 6.h, wIcon: 6.w, whatTheme: widget.whatTheme, title: 'SASS', icon: BoxIcons.bxl_sass, onTap: (){},),
                        SizedBox(width: 2.w,),
                        CardIconTechWidget( hIcon: 6.h, wIcon: 6.w, whatTheme: widget.whatTheme, title: 'AWS', icon: BoxIcons.bxl_aws, onTap: (){},),
                      ],
                    )
                  ]
                )),

                SizedBox(width: 4.w,),
              ],
            )
          )
        ],
      ),
    );

  }
}


class AboutMePageMobile extends StatefulWidget {
  
  final bool whatTheme;

  const AboutMePageMobile({
    Key? key,
    required this.whatTheme
  }) : super(key: key);

  @override
  State<AboutMePageMobile> createState() => _AboutMePageMobileState();
}

class _AboutMePageMobileState extends State<AboutMePageMobile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.h,
      width: 100.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.h,),
          TextWidget(isSelectable: true, text: '// About me', padding: null, textStyle: Theme.of(context).textTheme.displayMedium,),
          SizedBox(height: 5.h,),
          Expanded(child: Column(
            children:[
            TextWidget(isSelectable: true, text: 'Info', padding: null, textStyle: Theme.of(context).textTheme.displaySmall,),
            SizedBox(height: 4.h,),
            SizedBox(
              width: 80.w,
              child: TextWidget(
              isSelectable: true, 
              text: labelAboutMe, 
              padding: null, textStyle: Theme.of(context).textTheme.bodyLarge,),
            ),
            ]
          )),
          Expanded(child: Column(
            children:[
              TextWidget(isSelectable: true, text: 'Tech', padding: null, textStyle: Theme.of(context).textTheme.displaySmall,),
              SizedBox(height: 4.h,),
              Align(alignment: Alignment.topCenter, child: TextWidget(isSelectable: true, text: '> Mostly Used', padding: null, textStyle: Theme.of(context).textTheme.headlineMedium,)),
              SizedBox(height: 2.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,  
                children: [
                  CardIconTechWidget( hIcon: 6.h, wIcon: 12.w, whatTheme: widget.whatTheme, title: 'Flutter', icon: BoxIcons.bxl_flutter, onTap: (){},),
                  SizedBox(width: 1.w,),
                  CardIconTechWidget( hIcon: 6.h, wIcon: 12.w, whatTheme: widget.whatTheme, title: 'Firebase', icon: BoxIcons.bxl_firebase, onTap: (){},),
                  SizedBox(width: 1.w,),
                  CardIconTechWidget( hIcon: 6.h, wIcon: 12.w, whatTheme: widget.whatTheme, title: 'Git', icon: BoxIcons.bxl_git, onTap: (){},),
                ],
              ),
              SizedBox(height: 4.h,),
              Align(alignment: Alignment.topCenter, child: TextWidget(isSelectable: true, text: '> Somely Used', padding: null, textStyle: Theme.of(context).textTheme.headlineMedium,)),
              SizedBox(height: 2.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,  
                children: [
                  CardIconTechWidget( hIcon: 6.h, wIcon: 12.w, whatTheme: widget.whatTheme, title: 'Python', icon: BoxIcons.bxl_python, onTap: (){},),
                  SizedBox(width: 1.w,),
                  CardIconTechWidget( hIcon: 6.h, wIcon: 12.w, whatTheme: widget.whatTheme, title: 'JavaScript', icon: BoxIcons.bxl_javascript, onTap: (){},),
                  SizedBox(width: 1.w,),
                  CardIconTechWidget( hIcon: 6.h, wIcon: 12.w, whatTheme: widget.whatTheme, title: 'CSS', icon: BoxIcons.bxl_css3, onTap: (){},),
                ],
              ),
              SizedBox(height: 4.h,),
              Align(alignment: Alignment.topCenter, child: TextWidget(isSelectable: true, text: '> Want Learn', padding: null, textStyle: Theme.of(context).textTheme.headlineMedium,)),
              SizedBox(height: 2.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,  
                children: [
                  CardIconTechWidget( hIcon: 6.h, wIcon: 12.w, whatTheme: widget.whatTheme, title: 'React', icon: BoxIcons.bxl_react, onTap: (){},),
                  SizedBox(width: 2.w,),
                  CardIconTechWidget( hIcon: 6.h, wIcon: 12.w, whatTheme: widget.whatTheme, title: 'SASS', icon: BoxIcons.bxl_sass, onTap: (){},),
                  SizedBox(width: 2.w,),
                  CardIconTechWidget( hIcon: 6.h, wIcon: 12.w, whatTheme: widget.whatTheme, title: 'AWS', icon: BoxIcons.bxl_aws, onTap: (){},),
                ],
              )
            ],
          ),
        )
      ]
    )
  );
  }
}



const String labelAboutMe = 
'''
Hey, I'm Naim Dridi Podadera 👋 

I am a self-taught software developer located Malaga (Spain), focused primarily on building a beautiful cross-platform app using Flutter. I am always motivated by the challenge of creating a new projects, adding new things to it and learning something new in the process. \n
  
When I work focused on these things:
  
  🎨 Design good UI and make them intuitive and easy to use with a great UX.

  🔮 Create scalable projects taking into view possible future features.
  
  📱  Developing multiplatform apps with same expirences. 

''';