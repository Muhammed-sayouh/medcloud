import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/cart_item_widget.dart';
import 'package:medcloud/ui/custom_widgets/custom_button.dart';
import 'package:medcloud/ui/custom_widgets/stepper_widget.dart';
import 'package:medcloud/ui/screens/checkout/widgets/complete_order_widget.dart';
import 'package:medcloud/ui/screens/checkout/widgets/coupon_widget.dart';
import 'package:medcloud/ui/screens/checkout/widgets/order_summary_widget.dart';
import 'package:medcloud/ui/screens/checkout/widgets/payment_methodes_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darckWhiteColor,
      body: Stack(
        children: [
          CustomScreen(
            hideClose: true,
            title: Constants.checkout,
            child: SizedBox(
              width: width(context, 1),
              child: Padding(
                padding: commonPaddingHorizental(context),
                child: Column(
                  
                  children: [
                    Center(
                      child: StepProgressView(
                        activeColor: AppColors.orangeColor,
                        inactiveColor: AppColors.orangeColor,
                        curStep: 3,
                        titles: [Constants.address, Constants.confirmation],
                        width: width(context, 0.64),
                      ),
                    ),
                    SizedBox(
                      height: height(context, 0.64),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          SizedBox(
                          height: height(context, 0.05),
                        ),
                        Text(
                          Constants.paymentMethod,
                          style: getMediumStyle(fontSize: 16),
                        ),
                        const BigPadding(),
                        Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(children: [
                            PaymentMethodesWidget(
                              title: Constants.creditCard,
                              widget: Constants.creditCardImage,
                            ),
                            PaymentMethodesWidget(
                              title: Constants.applePay,
                              widget: Constants.applePayImage,
                            ),
                            PaymentMethodesWidget(
                              title: Constants.cashDelivery,
                              widget: Constants.cashImage,
                            ),
                          ]),
                        ),
                        SizedBox(
                          height: height(context, 0.03),
                        ),
                        Text(
                          Constants.orderSummary,
                          style: getMediumStyle(fontSize: 16),
                        ),
                        const BigPadding(),
                        Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(children: [
                            OrderSummaryWidget(
                              title: Constants.subTotal,
                              widget: "1540",
                            ),
                            OrderSummaryWidget(
                              title: Constants.shipping,
                              widget: "0",
                              hideDivider: false,
                            ),
                            OrderSummaryWidget(
                              title: Constants.totalCost,
                              widget: "1540",
                            ),
                          ]),
                        ),
                        SizedBox(
                          height: height(context, 0.03),
                        ),
                        const PromoCodeWidget(),
                        SizedBox(
                          height: height(context, 0.03),
                        ),
                        Text(
                          Constants.yourProducts,
                          style: getMediumStyle(fontSize: 16),
                        ),
                        const BigPadding(),
                        ListView.builder(
                          padding: EdgeInsets.zero,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 2,
                          itemBuilder: (context, index) => const CartItemWidget(
                            image:
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO278mT7AT7Nzu-J8s71SZX9aT6xTqJRDcTlakMJERvB_3_AtlB6C2YX2TzLi7aQDjXHE&usqp=CAU",
                            prand: 'Nova',
                            price: "40",
                            title: "blood pressure",
                          ),
                        ),
                        ],),
                      ),
                    ),
                   
                  ],
                ),
              ),
            ),
          ),
           Align(
                      alignment: Alignment.bottomCenter,
                      child: CompleteOrderWidget())
        ],
      ),
    );
  }
}
