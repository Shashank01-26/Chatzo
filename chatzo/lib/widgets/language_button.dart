import 'package:chatzo/common/extension/custom_theme_extension.dart';
import 'package:chatzo/common/utils/colors.dart';
import 'package:flutter/material.dart';

class LanguageSelection extends StatelessWidget {
  const LanguageSelection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
        color: context.theme.langBtnBgColor,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(20),
            splashFactory: NoSplash.splashFactory,
            highlightColor: context.theme.langBtnHighlightColor,
            child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.language,
                    color: Coloors.greyDark,
                  ),
                  const SizedBox(width: 15),
                  Text(
                    "English",
                    style: TextStyle(
                      color: context.theme.greyColor,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Coloors.greenDark,
                  ),
                ])));
  }
}


