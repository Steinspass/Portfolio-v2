import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/layout/responsive_widget_layout.dart';
import 'package:portfolio/widgets/all_widgets.dart';
import 'package:portfolio/widgets/footer_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class HeaderPage extends StatefulWidget {

  final dynamic Function()? onTap;

  const HeaderPage({Key? key, required this.onTap}) : super(key: key);

  @override
  State<HeaderPage> createState() => _HeaderPageState();
}

class _HeaderPageState extends State<HeaderPage> {

  @override
  Widget build(BuildContext context) {
    
    return responsiveWidgetLayout(
        context,
        desktopL: HeaderPageDesktop(onTap: widget.onTap),
        tabletL:  HeaderPageTablet(onTap: widget.onTap),
        mobileL:  HeaderPageMobile(onTap: widget.onTap)
    );
  }
  
}


class HeaderPageDesktop extends StatefulWidget {
  final dynamic Function()? onTap;
  const HeaderPageDesktop({Key? key, required this.onTap}) : super(key: key);

  @override
  State<HeaderPageDesktop> createState() => _HeaderPageDesktopState();
}

class _HeaderPageDesktopState extends State<HeaderPageDesktop>  with SingleTickerProviderStateMixin{
  late AnimationController animateController;

  @override
  void initState() {
    animateController = AnimationController(vsync: this);
    super.initState();
  }
  
  @override
  void dispose() {
    animateController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      height: 100.h,
      width: 95.w,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            FadeInUp(
              controller: ( controller ) => animateController = controller,
              manualTrigger: false,
              animate: true, 
              duration: const Duration(seconds: 1),
              delay: const Duration(milliseconds: 800),
              child: TextWidget(isSelectable: true, text: "NAIM", padding: null, textStyle: Theme.of(context).textTheme.displayLarge,)),
            SizedBox(height: 1.h,),
            FadeInUp(
              controller: ( controller ) => animateController = controller,
              manualTrigger: false,
              animate: true, 
              duration: const Duration(seconds: 1),
              delay: const Duration(milliseconds: 400),
              child: TextWidget(isSelectable: true, text: 'I am a self-taught and enthusiastic flutter dev.', padding: null, textStyle: Theme.of(context).textTheme.displaySmall,)),
            SizedBox(height: 4.h,),
            SizedBox(width: 25.w, child: const Divider(thickness: 0.5),),
            SizedBox(height: 4.h,),
            const RowButtonsSocialIcons(),
            SizedBox(height: 4.h,),
            BorderButtonWidget(text:'About Me', onTap: widget.onTap, padding: const EdgeInsets.all(14),),            
            const Spacer(),
            Bounce(
              infinite: true,
              duration: const Duration(seconds: 1),
              delay: const Duration(seconds: 5),
              controller: ( controller ) => animateController = controller,
              from: 20, 
              child: Icon(Icons.keyboard_arrow_down_rounded, size: 80.px,)),
            SizedBox(height: 2.h,)          
          ],
        ),
      ),
    );
  }
}


class HeaderPageTablet extends StatefulWidget {
  final dynamic Function()? onTap;
  const HeaderPageTablet({Key? key, required this.onTap}) : super(key: key);

  @override
  State<HeaderPageTablet> createState() => _HeaderPageTabletState();
}

class _HeaderPageTabletState extends State<HeaderPageTablet> with SingleTickerProviderStateMixin{
  late AnimationController animateController;

  @override
  void initState() {
    animateController = AnimationController(vsync: this);
    super.initState();
  }
  
  @override
  void dispose() {
    animateController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      height: 100.h,
      width: 95.w,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            FadeInUp(
              controller: ( controller ) => animateController = controller,
              manualTrigger: false,
              animate: true, 
              duration: const Duration(seconds: 1),
              delay: const Duration(milliseconds: 800),
              child: TextWidget(isSelectable: true, text: "Naim", padding: null, textStyle: Theme.of(context).textTheme.displayLarge,)),
            SizedBox(height: 1.h,),
            FadeInUp(
              controller: ( controller ) => animateController = controller,
              manualTrigger: false,
              animate: true, 
              duration: const Duration(seconds: 1),
              delay: const Duration(milliseconds: 400),
              child: TextWidget(isSelectable: true, text: 'I am a self-taught and enthusiastic flutter dev.', padding: null, textStyle: Theme.of(context).textTheme.displaySmall,)),
            SizedBox(height: 4.h,),
            SizedBox(width: 30.w, child: const Divider(thickness: 0.5),),
            SizedBox(height: 4.h,),
            const RowButtonsSocialIcons(),
            SizedBox(height: 4.h,),
            BorderButtonWidget(text:'About Me', onTap: widget.onTap, padding: const EdgeInsets.all(14),),            
            const Spacer(),
            Bounce(
              infinite: true,
              duration: const Duration(seconds: 1),
              delay: const Duration(seconds: 5),
              controller: ( controller ) => animateController = controller,
              from: 20, 
              child: Icon(Icons.keyboard_arrow_down_rounded, size: 80.px,)),
            SizedBox(height: 2.h,)          
          ],
        ),
      ),
    );
  }
}


class HeaderPageMobile extends StatefulWidget {
  final dynamic Function()? onTap;
  const HeaderPageMobile({Key? key, required this.onTap}) : super(key: key);

  @override
  State<HeaderPageMobile> createState() => _HeaderPageMobileState();
}

class _HeaderPageMobileState extends State<HeaderPageMobile> with SingleTickerProviderStateMixin{
  late AnimationController animateController;

  @override
  void initState() {
    animateController = AnimationController(vsync: this);
    super.initState();
  }
  
  @override
  void dispose() {
    animateController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      height: 100.h,
      width: 95.w,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            FadeInUp(
              controller: ( controller ) => animateController = controller,
              manualTrigger: false,
              animate: true, 
              duration: const Duration(seconds: 1),
              delay: const Duration(milliseconds: 800),
              child: TextWidget(isSelectable: true, text: "Naim", padding: null, textStyle: Theme.of(context).textTheme.displayMedium,)),
            SizedBox(height: 1.h,),
            FadeInUp(
              controller: ( controller ) => animateController = controller,
              manualTrigger: false,
              animate: true, 
              duration: const Duration(seconds: 1),
              delay: const Duration(milliseconds: 400),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: TextWidget(isSelectable: true, text: 'I am a self-taught and enthusiastic flutter dev.', padding: null, textStyle: Theme.of(context).textTheme.headlineLarge,),
              )),
            SizedBox(height: 2.h,),
            SizedBox(width: 35.w, child: const Divider(thickness: 0.5),),
            SizedBox(height: 2.h,),
            const RowButtonsSocialIcons(),
            SizedBox(height: 2.h,),
            BorderButtonWidget(text:'About Me', onTap: widget.onTap, padding: const EdgeInsets.all(10),),            
            const Spacer(),
            Bounce(
              infinite: true,
              duration: const Duration(seconds: 1),
              delay: const Duration(seconds: 5),
              controller: ( controller ) => animateController = controller,
              from: 20, 
              child: Icon(Icons.keyboard_arrow_down_rounded, size: 40.px,)),
            SizedBox(height: 2.h,)          
          ],
        ),
      ),
    );
  }
}