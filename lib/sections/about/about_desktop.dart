import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/app_provider.dart';
import 'package:folio/utils/about_utils.dart';
import 'dart:ui' as ui;
import 'package:folio/utils/utils.dart';
import 'package:folio/widget/about_me_data.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/tech_widget.dart';
import 'package:provider/provider.dart';

import 'package:universal_html/html.dart' as html;

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

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
          Row(
            children: [
              Expanded(
                child: Image.asset(
                  StaticUtils.coloredPhoto,
                  height: height * 0.7,
                ),
              ),
              Expanded(
                flex: width < 1230 ? 2 : 1,
                child: Container(
                  padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Who am I?',
                        style: AppText.b1!.copyWith(
                          color: AppTheme.c!.primary,
                        ),
                      ),
                      Space.y1!,
                      SelectableText(
                        magnifierConfiguration:
                            TextMagnifierConfiguration.disabled,
                        selectionHeightStyle: ui.BoxHeightStyle.max,
                        AboutUtils.aboutMeHeadline,
                        style: AppText.b1b!.copyWith(
                          color:
                              appProvider.isDark ? Colors.white : Colors.black,
                          fontFamily: 'Gilroy',
                        ),
                      ),
                      Space.y!,
                      SelectableText(
                        magnifierConfiguration:
                            TextMagnifierConfiguration.disabled,
                        selectionHeightStyle: ui.BoxHeightStyle.max,
                        // cursorColor: Colors.green,
                        AboutUtils.aboutMeDetail,
                        style: AppText.b2!.copyWith(
                          color:
                              appProvider.isDark ? Colors.white : Colors.black,
                          height: 2,
                          letterSpacing: 1.1,
                          fontFamily: 'Gilroy',
                          fontSize: AppDimensions.normalize(5),
                        ),
                        textAlign: TextAlign.justify,
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
                      Row(
                        children: kTools
                            .map((e) => ToolTechWidget(
                                  techName: e,
                                ))
                            .toList(),
                      ),
                      Space.y!,
                      Divider(
                        color: Colors.grey[800],
                        thickness: AppDimensions.normalize(0.5),
                      ),
                      const Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AboutMeData(
                                data: "Name",
                                information: "MHD Rajab Alkahef",
                              ),
                              AboutMeData(
                                data: "Age",
                                information: "23",
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
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
                                        : Colors
                                            .black, // Set your desired border color
                                    width: 1.0, // Set the border width
                                  ),
                                ),
                              ),
                              onPressed: () =>
                                  html.window.open(StaticUtils.resume, 'pdf'),
                              child: Text(
                                "Resume",
                                style: TextStyle(
                                  color: AppTheme.c!.primary,
                                ),
                              ),
                            ),
                          ),
                          // Space.x1!,
                          // Container(
                          //   color: Colors.grey[900]!,
                          //   width: AppDimensions.normalize(30),
                          //   height: AppDimensions.normalize(0.5),
                          // ),
                          // ...WorkUtils.logos.asMap().entries.map(
                          //       (e) => Expanded(
                          //         child: CommunityIconBtn(
                          //           icon: e.value,
                          //           link: WorkUtils.communityLinks[e.key],
                          //           height:
                          //               WorkUtils.communityLogoHeight[e.key],
                          //         ),
                          //       ),
                          //     )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: width < 1230 ? width * 0.05 : width * 0.1,
              ),
            ],
          )
        ],
      ),
    );
  }
}