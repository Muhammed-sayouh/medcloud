import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/custom_button.dart';
import 'package:medcloud/ui/screens/cart/widgets/check_out_widget.dart';
import 'package:medcloud/ui/screens/cart/widgets/percentage_bar_widget.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScreen(
        title: Constants.cart,
        hideBack: true,
        hideClose: true,
        headerWidget: const PercentageBarWidget(),
        child: Expanded(
          child: Container(
            color: AppColors.darckWhiteColor,
            child: SizedBox(
              width: width(context, 1),
              child: Column(
                children: [
                     SizedBox(
                      height: height(context, 0.51),
                    child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => const Text("data"),
                    ),
                  ),
                  const CheckOutWidget(),
                 
                ],
              ),
            ),
          ),
        ));
  }
}

