import 'package:flutter/cupertino.dart';
import 'package:folio/configs/app_dimensions.dart';

class ScrollProvider extends ChangeNotifier {
  final scrollController = ScrollController();

  ScrollController get controller => scrollController;

  scroll(int index) {
    double offset = index == 1
        ? 270
        : index == 2
            ? 255
            : index == 3
                ? 220
                : index == 4
                    ? 200
                    : 255;
    controller.animateTo(
      AppDimensions.normalize(
        offset * index.toDouble(),
      ),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  scrollTablet(int index) {
    double offset = index == 1
        ? 260
        : index == 2
            ? 290
            : index == 3
                ? 250
                : index == 4
                    ? 230
                    : 310;

    controller.animateTo(
      AppDimensions.normalize(
        offset * index.toDouble(),
      ),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  scrollMobile(int index) {
    double offset = index == 1
        ? 200
        : index == 2
            ? 230
            : index == 3
                ? 210
                : index == 4
                    ? 200
                    : 310;

    controller.animateTo(
      AppDimensions.normalize(
        offset * index.toDouble(),
      ),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }
}
