import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:portfolio/theme/color_schemes.g.dart';
import 'package:portfolio/widgets/all_widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CardIconTechWidget extends StatefulWidget {

  final String title;
  final IconData icon;
  final Function()? onTap;
  final bool whatTheme;
  final double? hIcon;
  final double? wIcon;


  const CardIconTechWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
    required this.whatTheme,
    this.hIcon,
    this.wIcon
    }) : super(key: key);

  @override
  State<CardIconTechWidget> createState() => _CardIconTechWidgetState();
}

class _CardIconTechWidgetState extends State<CardIconTechWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HoverWidget(
          onHover: (hover) {

          },
          hoverChild: CardWidget(
            color: widget.whatTheme ? darkColorScheme.primary : lightColorScheme.primary,
            height: widget.hIcon ?? 8.h,   
            width: widget.wIcon ?? 4.w,
            onHover: true,  
            padding: const EdgeInsets.all(4), 
            widget: Icon(widget.icon, size: 20.sp, color:widget.whatTheme ? darkColorScheme.background : lightColorScheme.background,), 
            onTap: widget.onTap ?? (){}, 
            onLongPress: (){}
          ), 
          
          child: CardWidget(
            height: widget.hIcon ?? 8.h,   
            width: widget.wIcon ?? 4.w,
            onHover: false,  
            padding: const EdgeInsets.all(4), 
            widget: Icon(widget.icon, size: 20.sp,), 
            onTap: widget.onTap ?? (){}, 
            onLongPress: (){}
          )
        ),
        
        TextWidget(text: widget.title, padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0), textStyle: Theme.of(context).textTheme.titleMedium)
      ],
    );
  }
}