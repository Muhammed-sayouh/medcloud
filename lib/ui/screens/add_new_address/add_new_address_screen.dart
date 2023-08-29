import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/custom_button.dart';
import 'package:medcloud/ui/custom_widgets/stepper_widget.dart';
import 'package:medcloud/ui/screens/map/map_screen.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScreen(
         
          hideClose: true,
          title: Constants.checkout,
          child: Column(
            children: [
              StepProgressView(
                activeColor: AppColors.orangeColor,
                curStep: 1,
                titles:  [Constants.address, Constants.confirmation],
                width: width(context, 0.64),
              ),
              SizedBox(height: height(context, 0.25),),
              Text(
               Constants.noAddress,
                style: getMediumStyle(fontSize: 18),
              ),
              const BigPadding(),
              CustomButton(title: Constants.addAddress,
              onPressed: () => Navigators.getTo(context, const MapScreen()),
              )
            ],
          )),
    );
  }
}
