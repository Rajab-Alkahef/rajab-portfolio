part of '../work_experience.dart';

class _WorkExperienceBackWidget extends StatelessWidget {
  const _WorkExperienceBackWidget(
      {Key? key, required this.serviceDesc, required this.serviceTitle})
      : super(key: key);

  final String serviceDesc;
  final String serviceTitle;

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          serviceDesc,
          style: TextStyle(
            height: 2,
            color: appProvider.isDark ? Colors.white : Colors.black,
          ),
        ),
        // Divider(
        //   color: appProvider.isDark ? Colors.white : Colors.black38,
        // ),
        // SizedBox(
        //   height: AppDimensions.normalize(14),
        //   width: AppDimensions.normalize(60),
        //   child: MaterialButton(
        //     color: AppTheme.c!.primary,
        //     onPressed: () => showDialog(
        //         context: context,
        //         builder: (contecxt) => AlertDialog(
        //               title: Text(
        //                 "Hire Me!",
        //                 style: AppText.b2b,
        //               ),
        //               actions: [
        //                 TextButton(
        //                   onPressed: () => Navigator.pop(context),
        //                   child: const Text("Back"),
        //                 )
        //               ],
        //               content: Column(
        //                 mainAxisSize: MainAxisSize.min,
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 children: [
        //                   MaterialButton(
        //                     height: 40.0,
        //                     onPressed: () => openURL(
        //                       'https://wa.me/message/VWCGK7NHWCJCI1',
        //                     ),
        //                     color: const Color(0xff34CB62),
        //                     child: Row(
        //                       mainAxisSize: MainAxisSize.min,
        //                       children: [
        //                         const Icon(
        //                           FontAwesomeIcons.whatsapp,
        //                           color: Colors.white,
        //                         ),
        //                         Space.x!,
        //                         Text(
        //                           'WhatsApp',
        //                           style: AppText.l1!.copyWith(
        //                             color: Colors.white,
        //                           ),
        //                         ),
        //                       ],
        //                     ),
        //                   ),
        //                   Space.y1!,
        //                   MaterialButton(
        //                     height: 40.0,
        //                     onPressed: () => openURL(
        //                       'https://khamsat.com/user/mhd_rajab_alkahef',
        //                     ),
        //                     color: const Color(0xfffcb61a),
        //                     child: Row(
        //                       mainAxisSize: MainAxisSize.min,
        //                       children: [
        //                         // FittedBox(
        //                         //   child: SvgPicture.asset(
        //                         //     "D:/Desktop/Personal/my_portfolio/my_portfolio/assets/work/khamsat.svg",
        //                         //     height: 50,
        //                         //     width: 50,
        //                         //   ),
        //                         // ),
        //                         Image.asset(
        //                           // scale: 1 * 5,
        //                           // "assets/work/khamsat.png",
        //                           width: 35, height: 35,
        //                           "assets/work/khamsat.png",

        //                           // scale: 1,

        //                           // "assets/work/khamsat.png",
        //                           // height: 35.0,
        //                           color: const Color(0xff424242),
        //                         ),
        //                         Space.x!,
        //                         Text(
        //                           'Khamsat',
        //                           style: AppText.l1!.copyWith(
        //                             color: const Color(0xff424242),
        //                           ),
        //                         ),
        //                       ],
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             )),
        //     child: Text(
        //       'HIRE ME!',
        //       style: AppText.b2!.copyWith(
        //         color: Colors.white,
        //       ),
        //     ),
        //   ),
        // )
      ],
    );
  }
}
