import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/cart_item_widget.dart';
import 'package:medcloud/ui/screens/cart/widgets/check_out_widget.dart';
import 'package:medcloud/ui/screens/cart/widgets/percentage_bar_widget.dart';

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
                    child: Padding(
                      padding: commonPaddingHorizental(context),
                      child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (context, index) => const CartItemWidget(
                          image:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO278mT7AT7Nzu-J8s71SZX9aT6xTqJRDcTlakMJERvB_3_AtlB6C2YX2TzLi7aQDjXHE&usqp=CAU",
                          prand: 'Nova',
                          price: "40",
                          title: "blood pressure",
                        ),
                      ),
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
