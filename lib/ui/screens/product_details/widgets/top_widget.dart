import 'package:medcloud/helper/import_helper.dart';

class TopWidgetProductDetailsScreen extends StatelessWidget {
  const TopWidgetProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: width(context, 1),
          height: height(context, 0.16),
          child: Image.asset(
            Constants.headerImage,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: width(context, 0.04),
            right: width(context, 0.04),
            top: height(context, 0.07),
            bottom: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () => Navigators.back(context),
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: AppColors.whiteColor,
                  )),
              const SizedBox(),
              Row(
                children: [
                  Icon(
                    Icons.share,
                    color: AppColors.whiteColor,
                  ),
                  MediumPadding(
                    horizental: true,
                  ),
                  Icon(
                    Icons.favorite,
                    color: AppColors.whiteColor,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
