import 'package:flutter/material.dart';


// Widget responsiveWidgetLayout(
//   BuildContext context, 
//   { Widget? mobileL, 
//     Widget? tabletL,
//     Widget? desktopL
//   }){

//     final sizeWidth = MediaQuery.of(context).size.width;


//     if(sizeWidth >= 1024){

//       return desktopL ?? const SizedBox.shrink();

//     }else if(sizeWidth >= 700){
      
//       return tabletL ?? const SizedBox.shrink();
      
//     }else if(sizeWidth <= 450){

//       return mobileL ?? const SizedBox.shrink();

//     }else{
//       return mobileL!;
//     }

// }


class ResponsiveLayout extends StatelessWidget {

  final Widget mobileL;
  final Widget tabletL;
  final Widget desktopL;

  const ResponsiveLayout({
    Key? key,
    required this.mobileL,
    required this.tabletL,
    required this.desktopL
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      
      if(constraints.maxWidth <= 450){
        return mobileL;
      }else if(constraints.maxWidth <= 820){
        return tabletL;
      }else{
        return desktopL;
      }

    },);
  }
}