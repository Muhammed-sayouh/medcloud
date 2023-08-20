import 'package:medcloud/helper/import_helper.dart';

class TextFormIconsWidget extends StatelessWidget {
  final IconData iconData;
  final Widget? extraWidget;
  const TextFormIconsWidget({
    super.key,
    required this.iconData,
    this.extraWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8, right: extraWidget == null ? 8 : 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: width(context, 0.075),
            height: width(context, 0.075),
            decoration: BoxDecoration(
              color: AppColors.lightOrangeColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
                child: Icon(
              iconData,
              color: AppColors.orangeColor,
              size: 18,
            )),
          ),
          extraWidget == null
              ? const SizedBox()
              : const SmallPadding(
                  horizental: true,
                ),
          extraWidget ?? const SizedBox(),
        ],
      ),
    );
  }
}
