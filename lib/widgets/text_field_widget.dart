import 'package:flutter/material.dart';


class TextFieldsFilledWidget extends StatefulWidget {
  
  final TextEditingController? controller;
  final int? maxLines;
  final String? restorationId;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final EdgeInsetsGeometry? padding;

  
  const TextFieldsFilledWidget({
    Key? key,
    this.controller,
    this.restorationId,
    this.icon,
    this.hintText,
    this.labelText, 
    this.helperText,
    this.padding,
    this.maxLines
  }): super(key: key);

  @override
  State<TextFieldsFilledWidget> createState() => _TextFieldsFilledWidgetState();
}

class _TextFieldsFilledWidgetState extends State<TextFieldsFilledWidget> {
  

 
  
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 40,
      ),
      child: TextFormField(
        controller: widget.controller,
        maxLines: widget.maxLines ?? 1,
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          
          hintText: widget.hintText ?? 'Hint text',
          labelText: widget.labelText ?? 'Label text',
          helperText: widget.helperText,
          helperStyle: Theme.of(context).textTheme.overline
        ),
      ),
    );
  }
}