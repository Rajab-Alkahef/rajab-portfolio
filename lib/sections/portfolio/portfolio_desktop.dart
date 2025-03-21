import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/app_provider.dart';
import 'package:folio/utils/project_utils.dart';
import 'package:folio/utils/utils.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/project_card.dart';
import 'package:provider/provider.dart';

class WorkExperienceDesktop extends StatefulWidget {
  const WorkExperienceDesktop({Key? key}) : super(key: key);

  @override
  State<WorkExperienceDesktop> createState() => _WorkExperienceDesktopState();
}

class _WorkExperienceDesktopState extends State<WorkExperienceDesktop> {
  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Container(
      padding: Space.h!,
      child: Column(
        children: [
          const CustomSectionHeading(
            text: "\nPortfolio",
          ),
          const CustomSectionSubHeading(
            text: "Here are few samples of my previous work :)\n\n",
          ),
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runSpacing: AppDimensions.normalize(10),
            children: ProjectUtils.banners
                .asMap()
                .entries
                .map(
                  (e) => ProjectCard(
                    banner: e.value,
                    projectIcon: ProjectUtils.icons[e.key],
                    projectLink: ProjectUtils.links[e.key],
                    projectTitle: ProjectUtils.titles[e.key],
                    projectDescription: ProjectUtils.description[e.key],
                  ),
                )
                .toList(),
          ),
          Space.y2!,
          SizedBox(
            height: AppDimensions.normalize(14),
            width: AppDimensions.normalize(50),
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
              onPressed: () => openURL(StaticUtils.gitHub),
              child: Text(
                'See More',
                style: AppText.l1b,
              ),
            ),
          )
        ],
      ),
    );
  }
}
