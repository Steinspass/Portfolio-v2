import 'package:flutter/material.dart';
import 'package:portfolio/layout/responsive_widget_layout.dart';
import 'package:portfolio/utils/send_email_manager.dart';
import 'package:portfolio/widgets/all_widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  
  
  
  @override
  Widget build(BuildContext context) {
   return responsiveWidgetLayout(
        context,
        desktopL: const ContactPageDesktop(),
        tabletL:  const ContactPageTablet(),
        mobileL: const ContactPageMobile()
    );
  }
}


class ContactPageDesktop extends StatefulWidget {
  const ContactPageDesktop({Key? key}) : super(key: key);

  @override
  State<ContactPageDesktop> createState() => _ContactPageDesktopState();
}

class _ContactPageDesktopState extends State<ContactPageDesktop> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  
  
  @override
  Widget build(BuildContext context) {
   return SizedBox(
      height: 100.h,
      width: 100.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.h,),
          TextWidget(isSelectable: true, text: '// Contact', padding: null, textStyle: Theme.of(context).textTheme.displayMedium,),
          const Spacer(),
          TextWidget(isSelectable: true, text: 'Available for freelances opportunities', padding: EdgeInsets.symmetric(vertical: 8, horizontal: 2.w), textStyle: Theme.of(context).textTheme.displaySmall,),
          TextWidget(isSelectable: true, text: 'Got a project idea and want to turn it into a reality? Let\'s make it happen!', padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4.w), textStyle: Theme.of(context).textTheme.bodySmall,),
          SizedBox(height: 4.h,),
          SizedBox(width: 35.w, child: TextFieldsFilledWidget(controller: _emailController, hintText: 'Your Email',labelText: 'Your Email', padding: null,)),
          SizedBox(width: 35.w,child: TextFieldsFilledWidget(controller: _nameController, hintText: 'Your Name', labelText: 'Your Name', padding: null,)),
          SizedBox(width: 35.w,child: TextFieldsFilledWidget(controller: _messageController, hintText: 'Tell me some details so I can help you', labelText: 'Tell me some details so I can help you', maxLines: 5,padding: null,)),
          SizedBox(height: 2.h,),
          SizedBox(
            width: 12.w,
            child: BorderButtonWidget(onTap: (){
              
              SendEmailManager(
                name: _nameController.text.isNotEmpty ? _nameController.text : "client",
                email: _emailController.text,
                message: _messageController.text
              ).launchMailto();
          
            }, text: 'Send', padding: null),
          ),
          const Spacer()
        ],
      ),
    );
  }
}

class ContactPageTablet extends StatefulWidget {
  const ContactPageTablet({Key? key}) : super(key: key);

  @override
  State<ContactPageTablet> createState() => _ContactPageTabletState();
}

class _ContactPageTabletState extends State<ContactPageTablet> {
  
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: 100.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.h,),
          TextWidget(isSelectable: true, text: '// Contact', padding: null, textStyle: Theme.of(context).textTheme.displayMedium,),
          const Spacer(),
          TextWidget(isSelectable: true, text: 'Available for freelances opportunities', padding: EdgeInsets.symmetric(vertical: 8, horizontal: 2.w), textStyle: Theme.of(context).textTheme.displaySmall,),
          TextWidget(isSelectable: true, text: 'Got a project idea and want to turn it into a reality? Let\'s make it happen!', padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4.w), textStyle: Theme.of(context).textTheme.bodySmall,),
          SizedBox(height: 4.h,),
          SizedBox(width: 85.w, child: TextFieldsFilledWidget(controller: _emailController, hintText: 'Your Email',labelText: 'Your Email', padding: null,)),
          SizedBox(width: 85.w,child: TextFieldsFilledWidget(controller: _nameController, hintText: 'Your Name', labelText: 'Your Name', padding: null,)),
          SizedBox(width: 85.w,child: TextFieldsFilledWidget(controller: _messageController, hintText: 'Tell me some details so I can help you', labelText: 'Tell me some details so I can help you', maxLines: 5,padding: null,)),
          SizedBox(height: 2.h,),
          SizedBox(
            width: 35.w,
            child: BorderButtonWidget(onTap: (){
              
              SendEmailManager(
                name: _nameController.text.isNotEmpty ? _nameController.text : "client",
                email: _emailController.text,
                message: _messageController.text
              ).launchMailto();
          
            }, text: 'Send', padding: null),
          ),
          const Spacer()
        ],
      ),
    );
  }
}


class ContactPageMobile extends StatefulWidget {
  const ContactPageMobile({Key? key}) : super(key: key);

  @override
  State<ContactPageMobile> createState() => _ContactPageMobileState();
}

class _ContactPageMobileState extends State<ContactPageMobile> {
  
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      height: 100.h,
      width: 100.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.h,),
          TextWidget(isSelectable: true, text: '// Contact', padding: null, textStyle: Theme.of(context).textTheme.displayMedium,),
          const Spacer(),
          TextWidget(isSelectable: true, text: 'Available for freelances opportunities', padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6.w), textStyle: Theme.of(context).textTheme.headlineLarge,),
          TextWidget(isSelectable: true, text: 'Got a project idea and want to turn it into a reality? Let\'s make it happen!', padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8.w), textStyle: Theme.of(context).textTheme.bodySmall,),
          SizedBox(height: 4.h,),
          SizedBox(width: 90.w, child: TextFieldsFilledWidget(controller: _emailController, hintText: 'Your Email',labelText: 'Your Email', padding: null,)),
          SizedBox(width: 90.w,child: TextFieldsFilledWidget(controller: _nameController, hintText: 'Your Name', labelText: 'Your Name', padding: null,)),
          SizedBox(width: 90.w,child: TextFieldsFilledWidget(controller: _messageController, hintText: 'Tell me some details so I can help you', labelText: 'Tell me some details so I can help you', maxLines: 5,padding: null,)),
          SizedBox(height: 2.h,),
          SizedBox(
            width: 35.w,
            child: BorderButtonWidget(onTap: (){
              
              SendEmailManager(
                name: _nameController.text.isNotEmpty ? _nameController.text : "client",
                email: _emailController.text,
                message: _messageController.text
              ).launchMailto();
          
            }, text: 'Send', padding: null),
          ),
          const Spacer()
        ],
      ),
    );

  }
}