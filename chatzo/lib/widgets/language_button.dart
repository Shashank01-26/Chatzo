import 'package:chatzo/common/utils/colors.dart';
import 'package:flutter/material.dart';

class LanguageSelection extends StatelessWidget {
  const LanguageSelection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color(0xff182229),
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(20),
            splashFactory: NoSplash.splashFactory,
            highlightColor: const Color(0xFF09141A),
            child: const Row(
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
                      color: Coloors.greyDark,
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


