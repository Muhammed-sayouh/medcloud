import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/screens/order_details/widgets/delivary_address_widget.dart';

class AddAressProfileScreen extends StatelessWidget {
  const AddAressProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScreen(
        hideClose: true,
        title: Constants.address,
          child: Padding(
        padding: commonPaddingHorizental(context),
        child: Column(
          children: [
            const DelivaryAddressWidget(profileScreen: true),
            const BigPadding(),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){},
                  child: Row(children: [
                    const Icon(
                      Icons.add,
                    ),
                    const SmallPadding(
                      horizental: true,
                    ),
                    Text(
                      Constants.addAddress,
                      style: getMediumStyle(
                        fontSize: 16,
                      ),
                    ),
                  ]),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
