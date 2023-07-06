import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/core_export.dart';

class TextCroppingWidget extends StatefulWidget {
  const TextCroppingWidget({
    super.key,
    required this.text,
    this.maxLength = 100,
    this.fontSize,
  });
  final String text;
  final int maxLength;
  final double? fontSize;

  @override
  TextCroppingWidgetState createState() => TextCroppingWidgetState();
}

class TextCroppingWidgetState extends State<TextCroppingWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final croppedText = isExpanded
        ? widget.text
        : (widget.text.length > widget.maxLength
            ? '${widget.text.substring(0, widget.maxLength)}...'
            : widget.text);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            text: croppedText,
            style: Get.textTheme.displaySmall?.copyWith(
              color: AppColors.neutral600,
              fontWeight: Fonts.interRegular,
              height: 1.3,
            ),
            children: [
              if (widget.text.length > widget.maxLength)
                WidgetSpan(
                  alignment: PlaceholderAlignment.top,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: Sizes.p4,
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(
                        Sizes.p32,
                      ),
                      child: Text(
                        isExpanded ? 'Read less' : 'Read more',
                        style: Get.textTheme.bodyLarge?.copyWith(
                          fontWeight: Fonts.interSemiBold,
                          fontSize: widget.fontSize ?? 16,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          isExpanded = !isExpanded;
                        });
                      },
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
