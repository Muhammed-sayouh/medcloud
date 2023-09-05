import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/screens/checkout/widgets/order_summary_widget.dart';
import 'package:medcloud/ui/screens/order_details/price_ordernumber_widget.dart';
import 'package:medcloud/ui/screens/order_details/widgets/delivary_address_widget.dart';
import 'package:medcloud/ui/screens/order_details/widgets/order_summary_order_detals_widget.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScreen(
        hideClose: true,
        title: Constants.orderDetails,
        child: Padding(
          padding: commonPaddingHorizental(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PriceOrderNumberWidget(),
              const BigPadding(),
              Text(
                Constants.deliveryAddress,
                style:
                    getMediumStyle(color: AppColors.blackColor, fontSize: 16),
              ),
              const SmallPadding(),
              const DelivaryAddressWidget(),
              const BigPadding(),
              Text(
                Constants.deliveryAddress,
                style:
                    getMediumStyle(color: AppColors.blackColor, fontSize: 16),
              ),
              const SmallPadding(),
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    Text(
                      "${Constants.creditCard} - ",
                      style: getRegularStyle(),
                    ),
                    Text(
                      Constants.paid,
                      style: getRegularStyle(color: AppColors.lightGreenColor),
                    ),
                  ]),
                ),
              ),
              const BigPadding(),
              Text(
                Constants.orderSummary,
                style: getMediumStyle(fontSize: 16),
              ),
              const SmallPadding(),
              const OrderSummeryOrderDetalsWidget(),
              
            ],
          ),
        ),
      ),
    );
  }
}

