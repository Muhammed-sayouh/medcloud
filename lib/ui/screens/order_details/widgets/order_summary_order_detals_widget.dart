import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/screens/checkout/widgets/order_summary_widget.dart';

class OrderSummeryOrderDetalsWidget extends StatelessWidget {
  const OrderSummeryOrderDetalsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(children: [
        OrderSummaryWidget(
          title: Constants.subTotal,
          widget: "80",
        ),
        OrderSummaryWidget(
          title: Constants.shipping,
          widget: "0",
        
        ),
        OrderSummaryWidget(
          title: Constants.coupon,
          widget: "10% | -8 SR",
          widgetColor: Colors.red,
          hideDivider: false,
        ),
        OrderSummaryWidget(
          title: Constants.totalCost,
          widget: "72",
        ),
      ]),
    );
  }
}
