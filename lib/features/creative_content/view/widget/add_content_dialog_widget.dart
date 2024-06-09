import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../common/constant.dart';
import '../../../../common/widgets/button_widget.dart';
import '../../../../common/widgets/custom_toast_widget.dart';
import '../../../../common/widgets/text_widget.dart';

class AddContentDialogWidget extends StatelessWidget {
  const AddContentDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 636,
        padding: EdgeInsets.fromLTRB(22, 20, 22, 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20), // uniform border radius
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.close,
                    size: 16,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                const TextWidget(
                  text: 'إضافة محتوى إبداعي جديد',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: neroColor,
                ),
              ],
            ),
            const  SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: whiteSmokeColor,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      radius: Radius.circular(12),
                      color: gray79Color,
                      strokeWidth: 1,
                      dashPattern: const [4, 4],
                      padding: const EdgeInsets.all(24),
                      child: Center(
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              'assets/images/cloud-upload.svg',
                            ),
                            const SizedBox(height: 12),
                            const TextWidget(
                              text: 'اضغط للتحميل',
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: neroColor,
                            ),
                            const SizedBox(height: 12),
                            const TextWidget(
                              text: 'أو قم بالسحب والإفلات',
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: davyGreyColor,
                            ),
                            const SizedBox(height: 12),
                            const TextWidget(
                              text:
                                  'PDF, SVG, PNG, JPG, GIF, MP4, MP3, pptx, Word',
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: davyGreyColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 58.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonWidget(
                        height: 48,
                        width: 149,
                        backgroundColor: neroColor,
                        border: false,
                        text: const TextWidget(
                          text: 'إضافة',
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                          showTopToast(context, 'تم إضافة المحتوى بنجاح');
                        },
                      ),
                      SizedBox(width: 25),
                      ButtonWidget(
                        height: 48,
                        width: 149,
                        backgroundColor: Colors.white,
                        text: const TextWidget(
                          text: 'إلغاء الأمر',
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: payneGreyColor,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void showTopToast(BuildContext context, String message) {
  final overlay = Overlay.of(context);
  final overlayEntry = OverlayEntry(
    builder: (context) => Positioned(
      top: 38,
      left: 84,
      right: 92,
      child: Material(
        color: Colors.transparent,
        child: CustomToastWidget(
          message: message,
          onDismiss: () {},
        ),
      ),
    ),
  );

  overlay?.insert(overlayEntry);

  Future.delayed(const Duration(seconds: 3), () {
    overlayEntry.remove();
  });
}
