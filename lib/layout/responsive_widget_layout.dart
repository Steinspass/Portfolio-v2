import 'package:flutter/material.dart';


Widget responsiveWidgetLayout(
  BuildContext context, 
  { Widget? mobileL, 
    Widget? tabletL,
    Widget? desktopL
  }){

    final sizeWidth = MediaQuery.of(context).size.width;


    if(sizeWidth >= 1024){

      return desktopL ?? const SizedBox.shrink();

    }else if(sizeWidth >= 700){
      
      return tabletL ?? const SizedBox.shrink();
      
    }else if(sizeWidth <= 450){

      return mobileL ?? const SizedBox.shrink();

    }else{
      return mobileL!;
    }

}