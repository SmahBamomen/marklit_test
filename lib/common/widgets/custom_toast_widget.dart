import 'package:flutter/material.dart';
import 'package:marklit/common/widgets/text_widget.dart';

import '../constant.dart';

class CustomToastWidget extends StatelessWidget {
  final String message;
  final VoidCallback? onDismiss;

  const CustomToastWidget({super.key, required this.message, this.onDismiss});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: const Border(
          right: BorderSide(
            color: greenColor,
            width: 4,
          ),
        ),
        borderRadius: BorderRadius.circular(8), // Adjust the radius as needed

        color: Colors.white,

        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(
                Icons.close,
                color: Colors.black,
                size: 16,
              ),
              onPressed: onDismiss,
            ),
            Expanded(
              child: TextWidget(
                textAlign: TextAlign.right,
                text: message,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: greenColor,
              ),
            ),
            SizedBox(width: 16),
            const Icon(
              Icons.check_circle,
              size: 32.5,
              color: greenColor,
            ),
          ],
        ),
      ),
    );
  }
}
