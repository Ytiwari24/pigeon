import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../constants/navigation_instances.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/responsiveTextSize.dart';
import '../../../widgets/responsiveness.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final Function onTap;
  const HorizontalMenuItem(
      {Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {
        onTap();
      },
      onHover: (value) {
        value
            ? adminMenuController.onHover(itemName)
            : adminMenuController.onHover("not hovering");
      },
      child: Obx(
        () => Container(
          margin: const EdgeInsets.only(
            left: 20,
            bottom: 10,
          ),
          decoration: BoxDecoration(
              color: adminMenuController.isActive(itemName)
                  ? const Color(0xff1A58A8)
                  : null,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topLeft: Radius.circular(20))),
          // color: adminMenuController.isHovering(itemName)
          //     ? lightGrey.withOpacity(.1)
          //     : Colors.transparent,
          child: Row(
            children: [
              // Visibility(
              //   visible: adminMenuController.isHovering(itemName) ||
              //       adminMenuController.isActive(itemName),
              //   maintainSize: true,
              //   maintainAnimation: true,
              //   maintainState: true,
              //   child: Container(
              //     width: 6,
              //     height: 40,
              //     color: dark,
              //   ),
              // ),
              SizedBox(width: width / 88),
              Padding(
                padding: const EdgeInsets.all(16),
                child: adminMenuController.returnIconFor(itemName),
              ),
              if (!adminMenuController.isActive(itemName))
                Flexible(
                    child: CustomText(
                  text: itemName,
                  size: ResponsiveWidget.isSmallScreen(context)
                      ? 10
                      : const AdaptiveTextSize()
                          .getadaptiveTextSize(context, 12),
                  weight: FontWeight.normal,
                  color: adminMenuController.isHovering(itemName)
                      ? dark
                      : Colors.black,
                ))
              else
                Flexible(
                    child: CustomText(
                  text: itemName,
                  color: Colors.white,
                  size: ResponsiveWidget.isSmallScreen(context)
                      ? 10
                      : const AdaptiveTextSize()
                          .getadaptiveTextSize(context, 14),
                  weight: FontWeight.bold,
                ))
            ],
          ),
        ),
      ),
    );
  }
}
