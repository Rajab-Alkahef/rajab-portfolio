import 'package:flutter/material.dart';
import 'package:folio/sections/about/about.dart';
import 'package:folio/sections/contact/contact.dart';
import 'package:folio/sections/home/home.dart';
import 'package:folio/sections/portfolio/portfolio.dart';
import 'package:folio/sections/services/services.dart';
import 'package:folio/widget/footer.dart';

import '../sections/work_experience/work_experience.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String mobilePhoto = 'assets/photos/my_photo2.png';
  static const String coloredPhoto = 'assets/photos/my_photo4.png';
  static const String blackWhitePhoto = 'assets/photos/black-white-photo3.png';

  // work
  static const String dsc = 'assets/work/dsc.png';
  static const String sastaticket = 'assets/work/st.png';
  static const String university = 'assets/work/cui.png';
  static const String fullterIsb = 'assets/work/flutterIsl.png';
  static const String raqi = 'assets/work/raqi.jpg';

  // services
  static const String ml = 'assets/services/machine-learning.png';
  static const String blog = 'assets/services/blog.png';
  static const String appDev = 'assets/services/mobile-development.png';
  static const String rapid = 'assets/services/rapid.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
    "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
    // "https://img.icons8.com/android/480/ffffff/twitter.png",
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
    "https://img.icons8.com/?size=500&id=BzFWSIqh6bCr&format=png&color=000000"
    // "https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png"

    // "https://img.icons8.com/material-rounded/500/ffffff/youtube.png"
  ];

  static const List<String> socialLinks = [
    "https://facebook.com/rajab.alkahef",
    "https://www.instagram.com/rajab.alkahef",
    // "https://twitter.com/mhmzdev",
    "https://www.linkedin.com/in/rajabalkahef/",
    "https://github.com/Rajab-Alkahef",
    "https://medium.com/@rajabalkahef3"
  ];

  static const String resume =
      'https://drive.google.com/drive/u/0/folders/1l1l-Ojpd79W-Bx9oVuteZ8qQ70AB4K_B';

  static const String gitHub = "https://github.com/Rajab-Alkahef";
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    WorkExperience(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
