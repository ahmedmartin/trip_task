import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class DynamicTextWidget extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final double minFontSize;
  final TextAlign? textAlign;

  const DynamicTextWidget({
    super.key,
    required this.text,
    this.style,
    required this.minFontSize, this.textAlign = TextAlign.end,
  });

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: style,
      maxLines: 1,
      minFontSize: minFontSize,
      stepGranularity: 0.5,
      overflow: TextOverflow.visible,
      softWrap: false,
      textAlign: textAlign,
    );
  }
}
