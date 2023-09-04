import 'package:flutter/cupertino.dart';
 import 'package:medcloud/helper/import_helper.dart';

class MyLocationWidget extends StatefulWidget {
  final void Function()? onTap;
  final bool moveCameraLoader;
  const MyLocationWidget(
      {super.key, this.onTap, required this.moveCameraLoader});

  @override
  State<MyLocationWidget> createState() => _MyLocationWidgetState();
}

class _MyLocationWidgetState extends State<MyLocationWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: height(context, 0.25), horizontal: width(context, 0.04)),
      child: Align(
        alignment: Alignment.topLeft,
        child: InkWell(
          onTap: widget.onTap,
          child: Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(200, 0, 0, 0),
                borderRadius: BorderRadius.circular(500)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: widget.moveCameraLoader
                  ? const CupertinoActivityIndicator(
                      color: AppColors.whiteColor,
                      radius: 10,
                    )
                  : const Icon(
                      Icons.gps_fixed_rounded,
                      color: AppColors.whiteColor,
                      size: 20,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
