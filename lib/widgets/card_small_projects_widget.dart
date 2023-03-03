import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/widgets/all_widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class CardSmallProjectWidget extends StatefulWidget {

  final String title;
  final String description;
  final double? height;
  final double? width;
  final dynamic Function()? onTap;

  const CardSmallProjectWidget({
    Key? key,
    required this.title,
    required this.onTap,
    this.height,
    this.width,
    required this.description
  }) : super(key: key);

  @override
  State<CardSmallProjectWidget> createState() => _CardSmallProjectWidgetState();
}

class _CardSmallProjectWidgetState extends State<CardSmallProjectWidget> {
  @override
  Widget build(BuildContext context) {
    return HoverWidget(
      onHover: (event) {},
      hoverChild: CardWidget(
        height: widget.height ?? 18.h, 
        width: widget.width ?? 22.w, 
        padding: const EdgeInsets.all(5),
        onHover: true, 
        widget: Column(
          children: [
            TextWidget(text: widget.title, padding: const EdgeInsets.all(8), textStyle: Theme.of(context).textTheme.titleMedium, isSelectable: true),
            SizedBox(height: 1.h,),
            TextWidget(text: widget.description, padding: const EdgeInsets.all(8), textStyle: Theme.of(context).textTheme.bodyMedium, isSelectable: true),
            const Spacer(),
            const Padding(padding: EdgeInsets.only(left: 20, right: 20),child: Divider(thickness: 0.5),),
            IconBorderButtonWidget(icon: BoxIcons.bxl_github, onTap: widget.onTap, text: 'View Code',),
            SizedBox(height: 1.h,),
          ],
        ), 
        onTap: (){}, 
        onLongPress: (){},
      ),
      child: CardWidget(
        height: widget.height ?? 18.h, 
        width: widget.width ?? 22.w, 
        padding: const EdgeInsets.all(5),
        onHover: false,  
        widget: Column(
          children: [
            TextWidget(text: widget.title, padding: const EdgeInsets.all(8), textStyle: Theme.of(context).textTheme.titleMedium, isSelectable: true),
            SizedBox(height: 1.h,),
            TextWidget(text: widget.description, padding: const EdgeInsets.all(8), textStyle: Theme.of(context).textTheme.bodyMedium, isSelectable: true),
            const Spacer(),
            const Padding(padding: EdgeInsets.only(left: 20, right: 20),child: Divider(thickness: 0.5),),
            IconBorderButtonWidget(icon: BoxIcons.bxl_github, onTap: widget.onTap, text: 'View Code',),
            SizedBox(height: 1.h,),
          ],
        ), 
        onTap: (){}, 
        onLongPress: (){}
      ),
    );
  }
}