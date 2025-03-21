import 'package:flutter/foundation.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/provider/app_provider.dart';
import 'package:folio/utils/about_utils.dart';
import 'package:folio/utils/utils.dart';
import 'dart:ui' as ui;
import 'package:folio/widget/custom_text_heading.dart';
import 'package:provider/provider.dart';
import 'package:universal_html/html.dart' as html;

import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/widget/about_me_data.dart';
import 'package:folio/widget/tech_widget.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    final appProvider = Provider.of<AppProvider>(context);

    return Container(
      padding: Space.h,
      child: Column(
        children: [
          const CustomSectionHeading(
            text: '\nAbout Me',
          ),
          const CustomSectionSubHeading(
            text: 'Get to know me :)',
          ),
          Space.y1!,
          Image.asset(
            StaticUtils.mobilePhoto,
            height: height * 0.27,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Who am I?",
              style: AppText.b2!.copyWith(
                color: AppTheme.c!.primary,
              ),
            ),
          ),
          Space.y1!,
          SelectableText(
            magnifierConfiguration: TextMagnifierConfiguration.disabled,
            selectionHeightStyle: ui.BoxHeightStyle.max,
            AboutUtils.aboutMeHeadline,
            style: AppText.b2b!.copyWith(
              color: appProvider.isDark ? Colors.white : Colors.black,
              fontFamily: 'Gilroy',
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          SelectableText(
            magnifierConfiguration: TextMagnifierConfiguration.disabled,
            selectionHeightStyle: ui.BoxHeightStyle.max,
            AboutUtils.aboutMeDetail,
            style: AppText.l1!.copyWith(
              color: appProvider.isDark ? Colors.white : Colors.black,
              height: 2,
              letterSpacing: 1.1,
              fontFamily: 'Gilroy',
            ),
          ),
          Space.y!,
          Divider(
            color: Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          Space.y!,
          Text(
            'Technologies I have worked with:',
            style: AppText.l1!.copyWith(
              color: AppTheme.c!.primary,
            ),
          ),
          Space.y!,
          Align(
            alignment: Alignment.center,
            child: Wrap(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: kTools
                  .map(
                    (e) => SizedBox(
                        width: width / 4, child: ToolTechWidget(techName: e)),
                  )
                  .toList(),
            ),
          ),
          Space.y!,
          Divider(
            color: Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          const AboutMeData(
            data: "Name",
            information: "MHD Rajab Alkahef",
          ),
          const AboutMeData(
            data: "Email",
            information: "rajabalkahef3@gmail.com",
          ),
          Space.y!,
          OutlinedButton(
              style: ButtonStyle(
                side: WidgetStateProperty.all<BorderSide>(
                  BorderSide(
                    color: appProvider.isDark
                        ? Colors.white
                        : Colors.black, // Set your desired border color
                    width: 1.0, // Set the border width
                  ),
                ),
              ),
              child: Text(
                "Resume",
                style: TextStyle(
                  color: AppTheme.c!.primary,
                ),
              ),
              onPressed: () {
                kIsWeb
                    ? html.window.open(StaticUtils.resume, "pdf")
                    : openURL(StaticUtils.resume);
              }),
          Space.y!,
          // Wrap(
          //     alignment: WrapAlignment.center,
          //     crossAxisAlignment: WrapCrossAlignment.center,
          //     children: WorkUtils.logos
          //         .asMap()
          //         .entries
          //         .map(
          //           (e) => CommunityIconBtn(
          //             icon: e.value,
          //             link: WorkUtils.communityLinks[e.key],
          //             height: WorkUtils.communityLogoHeight[e.key],
          //           ),
          //         )
          //         .toList()),
        ],
      ),
    );
  }
}
