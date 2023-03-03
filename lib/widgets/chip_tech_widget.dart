import 'package:flutter/material.dart';
import 'package:portfolio/widgets/text_widget.dart';


class ChipTechWidget extends StatefulWidget {
  final String title;
  final void Function()? onTap;

  const ChipTechWidget({
    Key? key,
    required this.title,
    required this.onTap
  }) : super(key: key);

  @override
  State<ChipTechWidget> createState() => _ChipTechWidgetState();
}

class _ChipTechWidgetState extends State<ChipTechWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ActionChip(
        label: TextWidget(text: widget.title, padding: const EdgeInsets.all(0), textStyle: Theme.of(context).textTheme.button),
        onPressed: widget.onTap ?? (){},
        elevation: 1.0, 
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
      ),
    );
  }
}