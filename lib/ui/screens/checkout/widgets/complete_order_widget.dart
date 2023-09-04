import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/custom_button.dart';
import 'package:medcloud/ui/screens/order_completed/order_completed_screen.dart';

class CompleteOrderWidget extends StatelessWidget {
  const CompleteOrderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height(context, 0.1),
      width: width(context, 1),
      child: Material(
        elevation:10,
       borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
        child: Container(
          decoration: const BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width(context, 0.13) , vertical: height(context, 0.018)),
            child: CustomButton(
               onPressed: () => Navigators.getTo(context, const OrderCompletedScreen()),
              title: Constants.completeOrder,
          
            ),
          ),
        ),
      ),
    );
  }
}
