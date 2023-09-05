import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:medcloud/helper/import_helper.dart';

class EasyStepperCustom extends StatefulWidget {
  final int activeStep;
  const EasyStepperCustom({super.key, required this.activeStep});

  @override
  State<EasyStepperCustom> createState() => _EasyStepperCustomState();
}

class _EasyStepperCustomState extends State<EasyStepperCustom> {
  int rechedStep = 0;

  @override
  Widget build(BuildContext context) {
    return EasyStepper(
      activeStep: widget.activeStep,
      lineLength: width(context, 0.15),
      lineSpace: 0,
      lineType: LineType.normal,
      defaultLineColor: AppColors.lightGrayColor,
      finishedLineColor: AppColors.lightGreenColor,
      activeStepTextColor: Colors.black87,
      finishedStepTextColor: Colors.black87,
      internalPadding: 0,
      showLoadingAnimation: false,
      stepRadius: 15,
      showStepBorder: false,
      steps: [
        EasyStep(
          customStep: CircleAvatar(
            backgroundColor: widget.activeStep == 0
                ? AppColors.orangeColor
                : widget.activeStep > 0
                    ? AppColors.lightGreenColor
                    : AppColors.lightGrayColor,
            child: widget.activeStep == 0
                ? const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        CupertinoIcons.circle_fill,
                        color: AppColors.whiteColor,
                        size: 8,
                      ),
                      Icon(
                        CupertinoIcons.circle_fill,
                        color: AppColors.whiteColor,
                        size: 6,
                      ),
                      Icon(
                        CupertinoIcons.circle_fill,
                        color: AppColors.whiteColor,
                        size: 6,
                      )
                    ],
                  )
                : widget.activeStep > 0
                    ? const Center(
                        child: Icon(
                        Icons.check,
                        color: AppColors.whiteColor,
                      ))
                    : const Center(
                        child: Icon(
                        Icons.check,
                        color: AppColors.lightGrayColor,
                      )),
          ),
          customTitle: Center(
            child: Text(
              Constants.review,
              style: getRegularStyle(
                fontSize: 11,
                color: widget.activeStep == 0
                    ? AppColors.orangeColor
                    : widget.activeStep > 0
                        ? AppColors.lightGreenColor
                        : AppColors.lightGrayColor,
              ),
            ),
          ),
        ),
        EasyStep(
          customStep: CircleAvatar(
            backgroundColor: widget.activeStep == 1
                ? AppColors.orangeColor
                : widget.activeStep > 1
                    ? AppColors.lightGreenColor
                    : AppColors.lightGrayColor,
            child: widget.activeStep == 1
                ? const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        CupertinoIcons.circle_fill,
                        color: AppColors.whiteColor,
                        size: 8,
                      ),
                      Icon(
                        CupertinoIcons.circle_fill,
                        color: AppColors.whiteColor,
                        size: 6,
                      ),
                      Icon(
                        CupertinoIcons.circle_fill,
                        color: AppColors.whiteColor,
                        size: 6,
                      )
                    ],
                  )
                : widget.activeStep > 1
                    ? const Center(
                        child: Icon(
                        Icons.check,
                        color: AppColors.whiteColor,
                      ))
                    : const SizedBox(),
          ),
          customTitle: Center(
            child: Text(
              Constants.processing,
              style: getRegularStyle(
                fontSize: 11,
                color: widget.activeStep == 1
                    ? AppColors.orangeColor
                    : widget.activeStep > 1
                        ? AppColors.lightGreenColor
                        : AppColors.lightGrayColor,
              ),
            ),
          ),
        ),
        EasyStep(
          customStep: CircleAvatar(
            backgroundColor: widget.activeStep == 2
                ? AppColors.orangeColor
                : widget.activeStep > 0
                    ? AppColors.lightGreenColor
                    : AppColors.lightGrayColor,
            child: widget.activeStep == 2
                ? const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        CupertinoIcons.circle_fill,
                        color: AppColors.whiteColor,
                        size: 8,
                      ),
                      Icon(
                        CupertinoIcons.circle_fill,
                        color: AppColors.whiteColor,
                        size: 6,
                      ),
                      Icon(
                        CupertinoIcons.circle_fill,
                        color: AppColors.whiteColor,
                        size: 6,
                      )
                    ],
                  )
                : widget.activeStep > 2
                    ? const Center(
                        child: Icon(
                        Icons.check,
                        color: AppColors.whiteColor,
                      ))
                    : Container(
                        color: AppColors.lightGrayColor,
                      ),
          ),
          customTitle: Center(
            child: Text(
              Constants.shipping,
              style: getRegularStyle(
                  fontSize: 11,
                  color: widget.activeStep == 2
                      ? AppColors.orangeColor
                      : widget.activeStep > 0
                          ? AppColors.lightGreenColor
                          : AppColors.lightGrayColor),
            ),
          ),
        ),
        EasyStep(
          customStep: CircleAvatar(
            backgroundColor: widget.activeStep == 3
                ? AppColors.orangeColor
                : widget.activeStep > 3
                    ? AppColors.lightGreenColor
                    : AppColors.lightGrayColor,
            child: widget.activeStep == 3
                ? const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        CupertinoIcons.circle_fill,
                        color: AppColors.whiteColor,
                        size: 8,
                      ),
                      Icon(
                        CupertinoIcons.circle_fill,
                        color: AppColors.whiteColor,
                        size: 6,
                      ),
                      Icon(
                        CupertinoIcons.circle_fill,
                        color: AppColors.whiteColor,
                        size: 6,
                      )
                    ],
                  )
                : widget.activeStep > 3
                    ? const Center(
                        child: Icon(
                        Icons.check,
                        color: AppColors.whiteColor,
                      ))
                    : Container(
                        color: AppColors.lightGrayColor,
                      ),
          ),
          customTitle: Center(
            child: Text(
              Constants.shipping,
              style: getRegularStyle(
                  fontSize: 11,
                  color: widget.activeStep == 3
                      ? AppColors.orangeColor
                      : widget.activeStep > 3
                          ? AppColors.lightGreenColor
                          : AppColors.lightGrayColor),
            ),
          ),
        ),
      ],
      onStepReached: (index) => setState(() => rechedStep = index),
    );
  }
}
