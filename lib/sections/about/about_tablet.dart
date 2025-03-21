import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/app_provider.dart';
import 'package:folio/utils/about_utils.dart';
import 'package:folio/utils/utils.dart';
import 'package:folio/widget/about_me_data.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/tech_widget.dart';
import 'package:provider/provider.dart';
import 'package:universal_html/html.dart' as html;

class AboutTab extends StatelessWidget {
  const AboutTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final appProvider = Provider.of<AppProvider>(context);

    return Container(
      padding: Space.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(
            child: CustomSectionHeading(
              text: '\nAbout Me',
            ),
          ),
          const Center(
            child: CustomSectionSubHeading(
              text: 'Get to know me :)',
            ),
          ),
          Space.y1!,
          Image.asset(
            StaticUtils.mobilePhoto,
            height: height * 0.27,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Text(
            "Who am I?",
            style: AppText.b2!.copyWith(
              color: AppTheme.c!.primary,
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
            textAlign: ui.TextAlign.center,
            'Technologies I have worked with:',
            style: AppText.l1!.copyWith(
              color: AppTheme.c!.primary,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: Wrap(
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
          Space.y!,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AboutMeData(
                    data: "Name",
                    information: "MHD Rajab Alkahef",
                  ),
                  AboutMeData(
                    data: "Age",
                    information: "24",
                  ),
                ],
              ),
              SizedBox(
                width: width > 710 ? width * 0.2 : width * 0.05,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AboutMeData(
                    data: "Email",
                    information: "rajabalkahef3@gmail.com",
                  ),
                  AboutMeData(
                    data: "From",
                    information: "Damascus, Syria",
                  ),
                ],
              ),
            ],
          ),
          Space.y1!,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: AppDimensions.normalize(13),
                width: AppDimensions.normalize(40),
                child: OutlinedButton(
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
                  onPressed: () => html.window.open(StaticUtils.resume, 'pdf'),
                  child: Text(
                    "Resume",
                    style: TextStyle(
                      color: AppTheme.c!.primary,
                    ),
                  ),
                ),
              ),
              // Space.x!,
              // Container(
              //   width: width * 0.05,
              //   decoration: BoxDecoration(
              //     border: Border(
              //       bottom: BorderSide(
              //         color: Colors.grey[900]!,
              //         width: 2.0,
              //       ),
              //     ),
              //   ),
              // ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //       children: WorkUtils.logos
              //           .asMap()
              //           .entries
              //           .map(
              //             (e) => CommunityIconBtn(
              //               icon: e.value,
              //               link: WorkUtils.communityLinks[e.key],
              //               height: WorkUtils.communityLogoHeight[e.key],
              //             ),
              //           )
              //           .toList()),
              // ),
            ],
          )
        ],
      ),
    );
  }
}
