import 'package:flutter/material.dart';


class TextWidget extends StatefulWidget {

  final String? text;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final TextOverflow? overflow;
  final bool? isSelectable;

  const TextWidget({Key? key, 
    @required this.text,
    @required this.padding,
    @required this.textStyle,
    this.overflow,
    this.isSelectable
  }) : super(key: key);

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
      bool isSelectable = widget.isSelectable ?? false;

      if(isSelectable){
        return Padding(
          padding: widget.padding ?? const EdgeInsets.only(left: 10),
          child: SelectableText(
          widget.text ?? 'Text label',
          style: widget.textStyle,
        ),
    );
      }
      return Padding(
      padding: widget.padding ?? const EdgeInsets.only(left: 10),
      child: Text(
        widget.text ?? 'Text label',
        overflow: widget.overflow,
        style: widget.textStyle,
      ),
    );

  }
}