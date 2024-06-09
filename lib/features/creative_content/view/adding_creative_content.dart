import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marklit/features/creative_content/view/widget/add_content_dialog_widget.dart';
import '../../../common/constant.dart';
import '../../../common/widgets/button_widget.dart';
import '../../../common/widgets/text_widget.dart';

class AddingCreativeContent extends StatelessWidget {
  const AddingCreativeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MainContent(),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/no-content.svg',
            height: 150,
          ),
          const SizedBox(height: 25),
          const TextWidget(
            text: 'لا يوجد لديك أي محتوى إبداعي',
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: neroColor,
          ),
          const SizedBox(height: 25),
          ButtonWidget(
            height: 58,
            width: 220,
            backgroundColor: neroColor,
            text: const TextWidget(
              text: 'إضافة محتوى إبداعي جديد',
              fontWeight: FontWeight.normal,
              fontSize: 16,
              color: Colors.white,
            ),
            onPressed: () {
              showGeneralDialog(
                barrierColor: blueColor.withOpacity(0.2),
                context: context,
                barrierDismissible: true,
                barrierLabel: '',
                transitionDuration: const Duration(milliseconds: 1000),
                pageBuilder: (context, animation1, animation2) {
                  return const AddContentDialogWidget();
                },
                transitionBuilder: (context, animation1, animation2, child) {
                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(0, -1),
                      end: const Offset(0, 0),
                    ).animate(animation1),
                    child: child,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
