import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/screens/categories/widgets/show_filter_buttom_sheet.dart';
import 'package:medcloud/ui/screens/orders/widgets/order_item_widget.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScreen(
          hideClose: true,
          changedColseIconWidget: InkWell(
              onTap: () => showFilterButtomSheetOrders(context),
              child: const Icon(
                Icons.filter_alt,
                color: Colors.white,
              )),
          child: Padding(
            padding: commonPaddingHorizental(context),
            child: SizedBox(
              height: height(context, 0.8),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Constants.activeOrders,
                      style: getMediumStyle(
                          color: AppColors.blackColor, fontSize: 18),
                    ),
                    const MediumPadding(),
                    ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: 3,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => const OrderItemWidget(),
                    ),
                    const BigPadding(),
                    Text(
                      Constants.previousOrders,
                      style: getMediumStyle(
                          color: AppColors.blackColor, fontSize: 18),
                    ),
                    const MediumPadding(),
                    ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: 3,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => const OrderItemWidget(),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
