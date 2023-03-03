import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:portfolio/widgets/all_widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class CardBigProjectWidget extends StatefulWidget {

  final String title;
  final String description;
  final double? height;
  final double? width;
  final dynamic Function()? onTap;
  final dynamic Function()? onTapCode;
  final dynamic Function()? onTapAndroid;
  final dynamic Function()? onTapWeb;
  final bool webVersion;
  final bool? isMobile;
  final List<Widget> keywords;


  const CardBigProjectWidget({
    Key? key,
    required this.title,
    required this.onTap,
    required this.description,
    required this.keywords,
    required this.onTapAndroid,
    required this.onTapCode,
    this.onTapWeb,
    this.height,
    this.width,
    this.isMobile,
    required this.webVersion,
  }) : super(key: key);

  @override
  State<CardBigProjectWidget> createState() => _CardBigProjectWidgetState();
}

class _CardBigProjectWidgetState extends State<CardBigProjectWidget> {
  
  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    return HoverWidget(
      onHover: (event) {},
      hoverChild: CardWidget(
        height:widget.height ?? 45.h, 
        width: widget.width ?? 40.w, 
        padding: const EdgeInsets.all(2),
        onHover: true, 
        widget: Column(
          children: [
            TextWidget(text: widget.title, padding: const EdgeInsets.all(8), textStyle: Theme.of(context).textTheme.headlineSmall, isSelectable: true),
            SizedBox(height: 1.h,),
            Expanded(
              flex: 4,
              child: widget.isMobile ?? false 
              ? SizedBox( width: 60.w, child: TextWidget(text: widget.description, padding: const EdgeInsets.symmetric( horizontal: 55, vertical: 35 ), textStyle: Theme.of(context).textTheme.bodyMedium, isSelectable: true,))
              : SizedBox( width: 60.w, child: TextWidget(text: widget.description, padding: const EdgeInsets.symmetric( horizontal: 75, vertical: 15 ), textStyle: Theme.of(context).textTheme.bodyMedium, isSelectable: true))
            ),
            TextWidget(text: 'Tech', padding: const EdgeInsets.all(4), textStyle: Theme.of(context).textTheme.headlineLarge, isSelectable: true),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SizedBox(
                  width: 80.w,
                  child: Scrollbar(
                    controller: scrollController,
                    child: ListView(
                      controller: scrollController,
                      scrollDirection: Axis.horizontal,
                      children: widget.keywords,
                    ),
                  ),
                ),
              )
            ),
            const Padding(padding: EdgeInsets.only(left: 40, right: 40),child: Divider(thickness: 0.5),),
            Expanded(
              flex: 1,
              child: widget.isMobile ?? false  
              ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Padding( padding:EdgeInsets.all(widget.webVersion ? 2.0 : 6.0), 
                    child: IconBorderButtonWidget(iconSize: 18, icon: BoxIcons.bxl_play_store, onTap: widget.onTapAndroid, text: 'Android', padding: const EdgeInsets.all(0),)),
                    Padding(
                      padding: EdgeInsets.all(widget.webVersion ? 2.0 : 6.0),
                      child: IconBorderButtonWidget(iconSize: 18, icon: BoxIcons.bxl_github, onTap: widget.onTapCode, text: 'Code', padding: const EdgeInsets.all(0)),
                    ),
                    widget.webVersion 
                    ? Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: IconBorderButtonWidget(iconSize: 18, icon: Icons.web_rounded, onTap: widget.onTapWeb, text: 'Web', padding: const EdgeInsets.all(0)),
                    )
                    : const SizedBox.shrink()
                  
                  ],
                )
              : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding( padding: const EdgeInsets.all(6.0), 
                  child: IconBorderButtonWidget(icon: BoxIcons.bxl_play_store, onTap: widget.onTapAndroid, text: 'Android', padding: const EdgeInsets.all(2),)),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: IconBorderButtonWidget(icon: BoxIcons.bxl_github, onTap: widget.onTapCode, text: 'Code', padding: const EdgeInsets.all(2)),
                  ),
                  widget.webVersion 
                  ? Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: IconBorderButtonWidget(icon: Icons.web_rounded, onTap: widget.onTapWeb, text: 'Web', padding: const EdgeInsets.all(2)),
                  )
                  : const SizedBox.shrink()
                  
                ],
              ),
            )
          ],
        ),
        onTap: widget.onTap, 
        onLongPress: (){}
      ),
      child: CardWidget(
        height: widget.height ?? 45.h, 
        width: widget.width ?? 40.w, 
        padding: const EdgeInsets.all(2),
        onHover: false, 
        widget: Column(
          children: [
            TextWidget(text: widget.title, padding: const EdgeInsets.all(8), textStyle: Theme.of(context).textTheme.headlineSmall, isSelectable: true),
            SizedBox(height: 1.h,),
            Expanded(
              flex: 4,
              child:  widget.isMobile ?? false 
              ? SizedBox( width: 60.w, child: TextWidget(text: widget.description, padding: const EdgeInsets.symmetric( horizontal: 55, vertical: 35 ), textStyle: Theme.of(context).textTheme.bodyMedium, isSelectable: true))
              : SizedBox( width: 60.w, child: TextWidget(text: widget.description, padding: const EdgeInsets.symmetric( horizontal: 75, vertical: 15 ), textStyle: Theme.of(context).textTheme.bodyMedium, isSelectable: true))
            ),
            TextWidget(text: 'Tech', padding: const EdgeInsets.all(4), textStyle: Theme.of(context).textTheme.headlineLarge, isSelectable: true),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SizedBox(
                  width: 80.w,
                  child: Scrollbar(
                    controller: scrollController,
                    child: ListView(
                      controller: scrollController,
                      scrollDirection: Axis.horizontal,
                      children: widget.keywords,
                    ),
                  ),
                ),
              )
            ),
            const Padding(padding: EdgeInsets.only(left: 40, right: 40),child: Divider(thickness: 0.5),),
            Expanded(
              flex: 1,
              child: widget.isMobile ?? false  
              ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Padding( padding:EdgeInsets.all(widget.webVersion ? 2.0 : 6.0), 
                    child: IconBorderButtonWidget(iconSize: 18, icon: BoxIcons.bxl_play_store, onTap: widget.onTapAndroid, text: 'Android', padding: const EdgeInsets.all(0),)),
                    Padding(
                      padding: EdgeInsets.all(widget.webVersion ? 2.0 : 6.0),
                      child: IconBorderButtonWidget(iconSize: 18, icon: BoxIcons.bxl_github, onTap: widget.onTapCode, text: 'Code', padding: const EdgeInsets.all(0)),
                    ),
                    widget.webVersion 
                    ? Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: IconBorderButtonWidget(iconSize: 18, icon: Icons.web_rounded, onTap: widget.onTapWeb, text: 'Web', padding: const EdgeInsets.all(0)),
                    )
                    : const SizedBox.shrink()
                  
                  ],
                )
              : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding( padding: const EdgeInsets.all(6.0), 
                  child: IconBorderButtonWidget(icon: BoxIcons.bxl_play_store, onTap: widget.onTapAndroid, text: 'Android', padding: const EdgeInsets.all(2),)),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: IconBorderButtonWidget(icon: BoxIcons.bxl_github, onTap: widget.onTapCode, text: 'Code', padding: const EdgeInsets.all(2)),
                  ),
                  widget.webVersion 
                  ? Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: IconBorderButtonWidget(icon: Icons.web_rounded, onTap: widget.onTapWeb, text: 'Web', padding: const EdgeInsets.all(2)),
                  )
                  : const SizedBox.shrink()
                  
                ],
              ),
            )
          ],
        ), 
        onTap: widget.onTap, 
        onLongPress: (){}
      ),
    );
  }
}