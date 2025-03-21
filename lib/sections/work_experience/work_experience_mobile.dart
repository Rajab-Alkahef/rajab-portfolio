part of 'work_experience.dart';

class WorkExperienceMobile extends StatelessWidget {
  const WorkExperienceMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomSectionHeading(
          text: '\nWork Experience',
        ),
        // const CustomSectionSubHeading(
        //   text: 'I may not be perfect but surely I\'m of some use :)\n\n',
        // ),
        Space.y!,
        CarouselSlider.builder(
          itemCount: WorkUtils.logos.length,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: _WorkExperienceCard(
              logo: WorkUtils.logos[i],
              position: WorkUtils.position[i],
              jobDescription: WorkUtils.positionDescription[i],
              workPeriod: WorkUtils.workPeriod[i],
            ),
          ),
          options: CarouselOptions(
            viewportFraction: 0.65,
            height: width < 450 ? height * 0.4 : height * 0.4,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        )
      ],
    );
  }
}
