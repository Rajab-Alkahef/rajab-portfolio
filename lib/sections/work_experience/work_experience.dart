import 'package:carousel_slider/carousel_slider.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/app_provider.dart';
import 'package:folio/responsive/responsive.dart';
import 'package:folio/utils/services_utils.dart';
import 'package:folio/utils/utils.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../utils/work_utils.dart';

part 'widgets/_work_experience_card.dart';
part 'widgets/_work_experience_card_back.dart';
part 'work_experience_desktop.dart';
part 'work_experience_mobile.dart';

class WorkExperience extends StatelessWidget {
  const WorkExperience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: WorkExperienceMobile(),
      tablet: WorkExperienceMobile(),
      desktop: WorkExperienceDesktop(),
    );
  }
}
