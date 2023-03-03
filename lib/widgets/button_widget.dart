
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/widgets/text_widget.dart';


///? All Principal Buttons Widget for most of cases


///* Rounded Button Widget
class RoundedButtonWidget extends StatefulWidget {
  final String? text;
  final Function()? onTap;
  
  
  const RoundedButtonWidget({Key? key, 
    @required this.onTap,
    @required this.text
  }) : super(key: key);

  @override
  _RoundedButtonWidgetState createState() => _RoundedButtonWidgetState();
}

class _RoundedButtonWidgetState extends State<RoundedButtonWidget> {

  final ButtonStyle styleElevatedButton = ElevatedButton.styleFrom(
    elevation: 1.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20)
    ),
    padding: const EdgeInsets.symmetric(
      horizontal: 24.0,
      vertical: 8.0
    ) 
  );
  
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onTap,
      style: styleElevatedButton,
      child: TextWidget(padding: const EdgeInsets.all(5), text: widget.text ?? 'Click me', textStyle: Theme.of(context).textTheme.labelLarge,) 
    );
  }
}


///* 


class RoundedButtonIconWidget extends StatefulWidget {

  final String? text;
  final Function()? onTap;
  final IconData? icon;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final ButtonStyle? buttonStyle;
  
  const RoundedButtonIconWidget({Key? key, 
    @required this.onTap,
    @required this.text,
    @required this.icon,
    this.textStyle,
    this.padding, 
    this.buttonStyle
  }) : super(key: key);

  @override
  State<RoundedButtonIconWidget> createState() => _RoundedButtonIconWidgetState();
}

class _RoundedButtonIconWidgetState extends State<RoundedButtonIconWidget> {
  final ButtonStyle styleElevatedButton = ElevatedButton.styleFrom(
    elevation: 0.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20)
    ),
    padding: const EdgeInsets.symmetric(
      horizontal: 24.0,
      vertical: 8.0
    ),
  );
  
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onTap,
      style:widget.buttonStyle ?? styleElevatedButton,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(widget.icon,),
          const SizedBox(width: 4,),
          TextWidget(padding: widget.padding ?? const EdgeInsets.all(5), text: widget.text ?? 'Click me', textStyle: widget.textStyle ?? Theme.of(context).textTheme.labelLarge,),
        ],
      ) 
    );
  }
}



class RoundedButtonLogoWidget extends StatefulWidget {

  final String? text;
  final Function()? onTap;
  final String? logo;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final ButtonStyle? buttonStyle;
  
  const RoundedButtonLogoWidget({Key? key, 
    @required this.onTap,
    @required this.text,
    @required this.logo,
    this.textStyle,
    this.padding, 
    this.buttonStyle
  }) : super(key: key);

  @override
  State<RoundedButtonLogoWidget> createState() => _RoundedButtonLogoWidgetState();
}

class _RoundedButtonLogoWidgetState extends State<RoundedButtonLogoWidget> {
  final ButtonStyle styleElevatedButton = ElevatedButton.styleFrom(
    elevation: 0.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20)
    ),
    padding: const EdgeInsets.symmetric(
      horizontal: 24.0,
      vertical: 8.0
    ),
  );
  
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onTap,
      style:widget.buttonStyle ?? styleElevatedButton,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Logo(widget.logo, size: 19),
          const SizedBox(width: 4,),
          TextWidget(padding: widget.padding ?? const EdgeInsets.all(5), text: widget.text ?? 'Click me', textStyle: widget.textStyle ?? Theme.of(context).textTheme.labelLarge,),
        ],
      ) 
    );
  }
}



///* Border Button Widget
class BorderButtonWidget extends StatefulWidget {
  final String? text;
  final Function()? onTap;
  final EdgeInsets? padding;
  
  
  const BorderButtonWidget({Key? key, 
    @required this.onTap,
    @required this.text,
    this.padding
  }) : super(key: key);

  @override
  _BorderButtonWidgetState createState() => _BorderButtonWidgetState();
}


class _BorderButtonWidgetState extends State<BorderButtonWidget> {

  
  final ButtonStyle styleOutlinedButton = OutlinedButton.styleFrom(
    elevation: 1.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24)
    ),
    padding: const EdgeInsets.symmetric(
      horizontal: 20.0,
      vertical: 6.0
    ) 
  );  
  
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: styleOutlinedButton,
      onPressed: widget.onTap,
      child: TextWidget(padding: widget.padding ?? const EdgeInsets.all(5), text: widget.text ?? 'Click me', textStyle: Theme.of(context).textTheme.labelLarge,) 
    );
  }
}


class IconBorderButtonWidget extends StatefulWidget {
  final String? text;
  final Function()? onTap;
  final EdgeInsets? padding;
  final IconData? icon;
  final double? iconSize;
  final TextStyle? textStyle;

  const IconBorderButtonWidget({
    Key? key,
    @required this.onTap,
    @required this.text,
    @required this.icon,
    this.iconSize,
    this.padding,
    this.textStyle
  }) : super(key: key);

  @override
  State<IconBorderButtonWidget> createState() => _IconBorderButtonWidgetState();
}

class _IconBorderButtonWidgetState extends State<IconBorderButtonWidget> {
  final ButtonStyle styleOutlinedButton = OutlinedButton.styleFrom(
    elevation: 1.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20)
    ),
    padding: const EdgeInsets.symmetric(
      horizontal: 16.0,
      vertical: 4.0
    ) 
  );  
  
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: styleOutlinedButton,
      onPressed: widget.onTap,
      child:  Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(widget.icon, size: widget.iconSize ?? 22,),
          const SizedBox(width: 2,),
          TextWidget(padding: widget.padding ?? const EdgeInsets.all(5), text: widget.text ?? 'Click me', textStyle: widget.textStyle ?? Theme.of(context).textTheme.labelSmall,),
        ],
      ) 
    );
  }
}



class IconButtonWidget extends StatefulWidget {

  final IconData? icon;
  final Function()? onTap;
  final String? tooltip;

  const IconButtonWidget({Key? key, 
    @required this.icon,
    @required this.onTap,
    this.tooltip
  }) : super(key: key);

  @override
  _IconButtonWidgetState createState() => _IconButtonWidgetState();
}

class _IconButtonWidgetState extends State<IconButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: widget.tooltip,
      icon: Icon(
        widget.icon,
        size: 26.0,
        // color: Colors.white,
      ), 
      onPressed: widget.onTap
    );
  }
}