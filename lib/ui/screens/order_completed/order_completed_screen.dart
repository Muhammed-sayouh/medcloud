import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/screens/main_screen/main_screen.dart';

class OrderCompletedScreen extends StatefulWidget {
  const OrderCompletedScreen({super.key});

  @override
  State<OrderCompletedScreen> createState() => _OrderCompletedScreenState();
}

class _OrderCompletedScreenState extends State<OrderCompletedScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2))
        .then((value) => Navigators.getOffAll(context, const MainScreen()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScreen(
        hideBack: true,
        hideClose: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: height(context, 0.15),
            ),
            CustomAssetImage(
              imagePath: Constants.checkIcon,
              width: width(context, 0.45),
              height: width(context, 0.45),
            ),
            SizedBox(
              height: height(context, 0.03),
            ),
            SizedBox(
              width: width(context, 0.7),
              child: Text(
                "${Constants.sucsessOrder} 1223330Ca",
                textAlign: TextAlign.center,
                style: getMediumStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
