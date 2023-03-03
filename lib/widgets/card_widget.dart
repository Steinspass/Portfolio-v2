import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';




class CardWidget extends StatefulWidget {

  final double? height;
  final double? width;
  final Widget? widget;
  final EdgeInsetsGeometry? padding;
  final Function()? onTap;
  final Function()? onLongPress;
  final Color? color;
  final bool? onHover;

  const CardWidget({Key? key, 
    @required this.height,
    @required this.width,
    @required this.padding,
    @required this.widget,
    @required this.onTap,
    @required this.onLongPress,
    this.onHover,
    this.color
  }) : super(key: key);

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: widget.padding ?? const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 18.0
      ),
      child: GestureDetector(
        onTap: widget.onTap ?? (){},
        onLongPress: widget.onLongPress ?? (){},
        child: Card(
          elevation: widget.onHover! ? 5.0 : 0.0,
          color: widget.color,
          // surfaceTintColor: widget.color,
          // shape: RoundedRectangleBorder(
          //   side: BorderSide(
          //     width: 1,
          //     color: lightColorScheme.outline
          //   ),
          //   borderRadius: BorderRadius.circular(12.0),
          // ),
          child: SizedBox(   
              height: widget.height ?? 30.h,
              width: widget.width ?? 90.w,   
              child: widget.widget ?? const Placeholder(),
            ),
        ),
      ),
    );
  }
}