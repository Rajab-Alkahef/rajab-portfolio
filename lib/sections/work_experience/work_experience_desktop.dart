part of 'work_experience.dart';

class WorkExperienceDesktop extends StatefulWidget {
  const WorkExperienceDesktop({Key? key}) : super(key: key);

  @override
  WorkExperienceDesktopState createState() => WorkExperienceDesktopState();
}

class WorkExperienceDesktopState extends State<WorkExperienceDesktop> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: Space.hf(4),
      child: Column(
        children: [
          const CustomSectionHeading(
            text: '\nWork Experience',
          ),
          // const CustomSectionSubHeading(
          //   text: 'I may not be perfect but surely I\'m of some use :)\n\n',
          // ),
          Space.y!,
          Wrap(
            spacing: width * 0.05,
            runSpacing: height * 0.05,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: WorkUtils.logos
                .asMap()
                .entries
                .map(
                  (e) => _WorkExperienceCard(
                    logo: WorkUtils.logos[e.key],
                    position: WorkUtils.position[e.key],
                    jobDescription: WorkUtils.positionDescription[e.key],
                    workPeriod: WorkUtils.workPeriod[e.key],
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
