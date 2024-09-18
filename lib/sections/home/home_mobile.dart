import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/provider/app_provider.dart';

import 'package:folio/utils/utils.dart';
import 'package:folio/widget/social_links.dart';
import 'package:provider/provider.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);

    return SizedBox(
      // height: size.height * 0.8,
      child: Stack(
        children: [
          // Positioned(
          //   bottom: 0.0,
          //   right: AppDimensions.normalize(25),
          //   child: Opacity(
          //     opacity: 0.9,
          //     child: Image.asset(
          //       StaticUtils.blackWhitePhoto,
          //       height: AppDimensions.normalize(150),
          //     ),
          //   ),
          // ),
          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(10),
              AppDimensions.normalize(40),
              0,
              0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "WELCOME TO MY PORTFOLIO! ",
                      style: AppText.b2!.copyWith(
                        color: appProvider.isDark ? Colors.white : Colors.black,
                        fontFamily: 'Gilroy',
                      ),
                    ),
                    Space.x!,
                    Image.asset(
                      StaticUtils.hi,
                      height: AppDimensions.normalize(10),
                    ),
                  ],
                ),
                Space.y!,
                Text(
                  "MHD",
                  style: AppText.h3!.copyWith(
                    color: appProvider.isDark ? Colors.white : Colors.black,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w100,
                  ),
                ),
                Text(
                  "RAJAB ALKAHEF",
                  style: AppText.h3b!.copyWith(
                    color: appProvider.isDark ? Colors.white : Colors.black,
                    height: 1,
                  ),
                ),
                Space.y!,
                Row(
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: AppTheme.c!.primary!,
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          ' Flutter Developer',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1!.copyWith(
                            color: appProvider.isDark
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                        TyperAnimatedText(
                          ' Software Engineer',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1!.copyWith(
                            color: appProvider.isDark
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                        TyperAnimatedText(
                          ' Machine Learning Engineer',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1!.copyWith(
                            color: appProvider.isDark
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                        TyperAnimatedText(
                          ' A friend :)',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1,
                        ),
                      ],
                      repeatForever: true,
                      isRepeatingAnimation: true,
                    ),
                  ],
                ),
                Space.y!,
                const SocialLinks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
