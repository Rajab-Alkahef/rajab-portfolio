part of '../work_experience.dart';

class _WorkExperienceCard extends StatefulWidget {
  final String logo;
  final String position;
  final String jobDescription;
  final String workPeriod;
  const _WorkExperienceCard({
    Key? key,
    required this.logo,
    required this.position,
    required this.jobDescription,
    required this.workPeriod,
  }) : super(key: key);

  @override
  _WorkExperienceCardState createState() => _WorkExperienceCardState();
}

class _WorkExperienceCardState extends State<_WorkExperienceCard> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);

    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        cardKey.currentState!.toggleCard();
      },
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: FlipCard(
        flipOnTouch: kIsWeb ? false : true,
        key: cardKey,
        back: Container(
          width: AppDimensions.normalize(100),
          height: AppDimensions.normalize(80),
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          decoration: BoxDecoration(
            color: appProvider.isDark ? Colors.grey[900] : Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: isHover
                ? [
                    BoxShadow(
                      color: AppTheme.c!.primary!.withAlpha(100),
                      blurRadius: 12.0,
                      offset: const Offset(0.0, 0.0),
                    )
                  ]
                : [
                    BoxShadow(
                      color: Colors.black.withAlpha(100),
                      blurRadius: 12.0,
                      offset: const Offset(0.0, 0.0),
                    )
                  ],
          ),
          child: _WorkExperienceBackWidget(
            serviceDesc: widget.jobDescription,
            serviceTitle: widget.position,
          ),
        ),
        front: Container(
          width: AppDimensions.normalize(100),
          height: AppDimensions.normalize(80),
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          decoration: BoxDecoration(
            color: appProvider.isDark ? Colors.grey[900] : Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: isHover
                ? [
                    BoxShadow(
                      color: AppTheme.c!.primary!.withAlpha(100),
                      blurRadius: 12.0,
                      offset: const Offset(0.0, 0.0),
                    )
                  ]
                : [
                    BoxShadow(
                      color: Colors.black.withAlpha(100),
                      blurRadius: 12.0,
                      offset: const Offset(0.0, 0.0),
                    )
                  ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.logo,
                height: AppDimensions.normalize(30),
                // color: widget.serviceIcon.contains(StaticUtils.openSource) &&
                //         !appProvider.isDark
                //     ? const Color(0xff02a4ff)
                //     : const Color(0xff02a4ff),
              ),
              Space.y1!,
              Text(
                widget.position,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: appProvider.isDark ? Colors.white : Colors.black,
                ),
              ),
              // Space.y1!,
              Space.x2!,
              Text(
                widget.workPeriod,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  color: appProvider.isDark ? Colors.white : Colors.black,
                ),
              ),
              Space.y1!,
              Text(
                "Click For More Details",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appProvider.isDark ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
