import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/app_provider.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Image.asset(
            appProvider.isDark ? 'assets/Logo.png' : 'assets/logo_black.png',
            width: 200,
          ),
        ),
      ],

      // Text(
      //   "< ",
      //   style: AppText.b1!.copyWith(
      //     color: appProvider.isDark ? Colors.white : Colors.black,
      //   ),
      // ),
      // Text(
      //   "Rajab",
      //   style: AppText.b1b!.copyWith(
      //     fontFamily: 'Montserrat',
      //   ),
      // ),
      // Text(
      //   MediaQuery.of(context).size.width >= 1000 ? " />\t\t" : " />",
      //   style: AppText.b1!.copyWith(
      //     color: appProvider.isDark ? Colors.white : Colors.black,
      //   ),
      // )
    );
  }
}
