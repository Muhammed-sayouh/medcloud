import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/custom_button.dart';
import 'package:medcloud/ui/screens/product_details/image_slider.dart';
import 'package:medcloud/ui/screens/product_details/widgets/product_details_comment_widget.dart';
import 'package:medcloud/ui/screens/product_details/widgets/top_widget.dart';

import 'widgets/product_details_expanded_widget.dart';

class ProductDetalsScreen extends StatelessWidget {
  const ProductDetalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const FullscreenSlider(),
          const TopWidgetProductDetailsScreen(),
          Padding(
            padding: EdgeInsets.only(top: height(context, 0.43)),
            child: Padding(
              padding: commonPaddingHorizental(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Blood Pressure",
                        style: getMediumStyle(fontSize: 18),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: AppColors.orangeColor,
                            size: 20,
                          ),
                          const SmallPadding(
                            horizental: true,
                          ),
                          Text(
                            "4.5",
                            style:
                                getRegularStyle(color: AppColors.orangeColor),
                          )
                        ],
                      )
                    ],
                  ),
                  const MediumPadding(),
                  Text(
                    "Citizen | China",
                    style: getRegularStyle(fontSize: 15),
                  ),
                  const BigPadding(),
                  Text(
                    "40 ${Constants.sar}",
                    style: getRegularStyle(
                        fontSize: 20, color: AppColors.purpleColor),
                  ),
                  const BigPadding(),
                  ExpandedItemDetailsWdget(
                    title: Constants.description,
                    widget: SizedBox(
                      width: width(context, 0.88),
                      child: Text(
                        "Lorem ipsum dolor sit amet, sadipscing elitr, ",
                        style: getRegularStyle(),
                      ),
                    ),
                  ),
                  ExpandedItemDetailsWdget(
                    title: "${Constants.reviews} 128",
                    widget: const CommentWidgetProductDetailsWidget(),
                  ),
                ],
              ),
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: BottomWidgetProductDetailssScreen(),
          )
        ],
      ),
    );
  }
}

class BottomWidgetProductDetailssScreen extends StatefulWidget {
  const BottomWidgetProductDetailssScreen({super.key});

  @override
  State<BottomWidgetProductDetailssScreen> createState() =>
      _BottomWidgetProductDetailssScreenState();
}

class _BottomWidgetProductDetailssScreenState
    extends State<BottomWidgetProductDetailssScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: commonPaddingHorizental(context,virtical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(
              right: Constants.getLanguage() == 'ar' ? 0 : 5,
              left: Constants.getLanguage() == 'en' ? 0 : 5,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.lightGrayColor),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(children: [
              InkWell(
                  onTap: () {
                    if (count > 1) {
                      setState(() {
                        count--;
                      });
                    }
                  },
                  child: Icon(
                    CupertinoIcons.minus,
                    size: 26,
                    color: count > 1
                        ? AppColors.orangeColor
                        : AppColors.lightGrayColor,
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: Text(count.toString()),
              ),
              InkWell(
                  onTap: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: const Icon(
                    CupertinoIcons.add,
                    size: 26,
                    color: AppColors.orangeColor,
                  )),
            ]),
          ),
          CustomButtonWithWidget(
              widthRatio: 0.66,
              hightRatio: 0.058,
              title: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.shopping_cart,
                    color: AppColors.whiteColor,
                  ),
                  const MediumPadding(
                    horizental: true,
                  ),
                  Text(
                    Constants.addToCart,
                    style:
                        getMediumStyle(color: AppColors.whiteColor, fontSize: 13),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
