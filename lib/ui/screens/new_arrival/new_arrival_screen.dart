import 'package:flutter/cupertino.dart';
import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/product_item_widget.dart';
import 'package:medcloud/ui/screens/categories/widgets/show_filter_buttom_sheet.dart';
import 'package:medcloud/ui/screens/product_details/product_details_screen.dart';

class NewArrivalScreen extends StatelessWidget {
  const NewArrivalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScreenX1(
        title: Constants.newArrival,
        changedColseIconWidget:   RotatedBox(
            quarterTurns: 2,
            child: InkWell(
              onTap: () => showFilterNewArrivalButtomSheet(context),
              child: const Icon(
                CupertinoIcons.list_bullet_indent,
                size: 30,
                color: AppColors.whiteColor,
              ),
            )),
        child: Expanded(
          child: Padding(
            padding: commonPaddingHorizental(context),
            child: GridView.builder(
              padding: EdgeInsets.zero,
              itemCount: 9,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.45,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: width(context, 0.02)),
              itemBuilder: (context, index) => InkWell(
                onTap: () =>
                    Navigators.getTo(context, const ProductDetalsScreen()),
                child: const ProductItemWidget(
                  image:
                      "https://img.freepik.com/free-photo/black-man-wheelchair-riding-along-park-road_74855-22191.jpg",
                  prand: 'Nova',
                  price: "40 SAR",
                  title: "Wheel chair",
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
