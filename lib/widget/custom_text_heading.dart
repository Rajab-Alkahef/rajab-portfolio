import 'package:flutter/material.dart';
import 'package:folio/configs/app_typography.dart';
import 'package:folio/provider/app_provider.dart';
import 'package:folio/responsive/responsive.dart';
import 'package:provider/provider.dart';

class CustomSectionHeading extends StatelessWidget {
  final String text;

  const CustomSectionHeading({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Text(
      text,
      style: AppText.h1!.copyWith(
        fontSize: Responsive.isMobile(context) ? 35 : null,
        color: appProvider.isDark ? Colors.white : Colors.black,
        fontFamily: 'Gilroy',
      ),
    );
  }
}

class CustomSectionSubHeading extends StatelessWidget {
  final String text;

  const CustomSectionSubHeading({Key? key, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Text(
      text,
      style: AppText.l1!.copyWith(
        color: appProvider.isDark ? Colors.white : Colors.black,
        fontFamily: 'Gilroy',
      ),
    );
  }
}
