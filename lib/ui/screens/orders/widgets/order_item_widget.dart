import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/screens/order_details/order_details_screen.dart';

class OrderItemWidget extends StatelessWidget {
  const OrderItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigators.getTo(context, const OrderDetailsScreen()),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "1294365Ca",
                        style: getMediumStyle(color: AppColors.purpleColor),
                      ),
                      Text(
                        "12 Apr 2021",
                        style: getMediumStyle().copyWith(height: 1.6),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "${Constants.totalCost} : 27 ${Constants.sar}",
                        style: getMediumStyle(),
                      ),
                      const SmallPadding(
                        horizental: true,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: AppColors.darkGrayColor,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(
                thickness: 2,
              ),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CustomNetworkImage(
                      width: width(context, 0.16),
                      height: width(context, 0.16),
                      imagePath:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO278mT7AT7Nzu-J8s71SZX9aT6xTqJRDcTlakMJERvB_3_AtlB6C2YX2TzLi7aQDjXHE&usqp=CAU",
                    ),
                  ),
                  const MediumPadding(
                    horizental: true,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CustomNetworkImage(
                      width: width(context, 0.16),
                      height: width(context, 0.16),
                      imagePath:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO278mT7AT7Nzu-J8s71SZX9aT6xTqJRDcTlakMJERvB_3_AtlB6C2YX2TzLi7aQDjXHE&usqp=CAU",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
