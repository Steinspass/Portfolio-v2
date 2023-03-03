import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/theme/color_schemes.g.dart';
import 'package:portfolio/widgets/all_widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher_string.dart';


class FooterWidget extends StatefulWidget {
  final bool whatTheme;
  const FooterWidget({Key? key, required this.whatTheme}) : super(key: key);

  @override
  State<FooterWidget> createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 16.h,
      width: 95.w,
      child: Container(
        color: widget.whatTheme 
          ? darkColorScheme.surfaceVariant.withOpacity(0.1)  
          : lightColorScheme.surfaceVariant.withOpacity(0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 2.h,),
            const RowButtonsSocialIcons(),
            SizedBox(height: 1.h,),
            const BuildWithFlutterText(),
            const Spacer(),
            TextWidget(text: '© 2023 Naim Dridi Podadera.', isSelectable: true, padding: const EdgeInsets.all(8), textStyle: Theme.of(context).textTheme.labelSmall)
          ],
        ),  

      ),
    );
  }
}

class RowButtonsSocialIcons extends StatefulWidget {
  const RowButtonsSocialIcons({Key? key}) : super(key: key);

  @override
  State<RowButtonsSocialIcons> createState() => _RowButtonsSocialIconsState();
}

class _RowButtonsSocialIconsState extends State<RowButtonsSocialIcons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButtonWidget(tooltip: 'Github', icon: BoxIcons.bxl_github, onTap: () => launchUrlString("https://github.com/Steinspass"),),
        SizedBox(width: 2.w,),
        IconButtonWidget(tooltip: 'Twitter', icon: BoxIcons.bxl_twitter, onTap: () => launchUrlString("https://twitter.com/SteinsPass11"),),
        SizedBox(width: 2.w,),
        IconButtonWidget(tooltip: 'Copy the Email', icon: BoxIcons.bxl_gmail, onTap: () => Clipboard.setData( const ClipboardData(text: 'naimdp.dev@gmail.com')),),
      ],
    );
  }
}


class BuildWithFlutterText extends StatefulWidget {
  const BuildWithFlutterText({Key? key}) : super(key: key);

  @override
  State<BuildWithFlutterText> createState() => _BuildWithFlutterTextState();
}

class _BuildWithFlutterTextState extends State<BuildWithFlutterText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextWidget(text: 'Build with 💙 using: ', padding: const EdgeInsets.all(4), textStyle: Theme.of(context).textTheme.labelLarge ),
        const FlutterLogo(size: 25, ),
      ],
    );
  }
}