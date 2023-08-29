import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/custom_button.dart';
import 'package:medcloud/ui/screens/add_new_address/add_new_address_screen.dart';

class CheckOutWidget extends StatelessWidget {
  const CheckOutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      elevation: 5,
      child: SizedBox(
        height: height(context, 0.2),
        width: width(context, 1),
        child: Padding(
          padding: commonPaddingHorizental(context, virtical: 15),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '2 Products',
                  style: getRegularStyle(fontSize: 18),
                ),
                Text(
                  '80 ${Constants.sar}',
                  style: getRegularStyle(
                      fontSize: 18, color: AppColors.purpleColor),
                ),
              ],
            ),
            SizedBox(
              height: height(context, 0.03),
            ),
             CustomButton(
              onPressed: () => Navigators.getTo(context, const AddNewAddressScreen()),
              title: Constants.checkout,
              widthRatio: 0.8,
              hightRatio: 0.06,
            )
          ]),
        ),
      ),
    );
  }
}
