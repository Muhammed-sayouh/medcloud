import 'package:medcloud/helper/import_helper.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScreen(
          hideClose: true,
          title: Constants.aboutUs,
          child: Padding(
            padding: commonPaddingHorizental(context),
            child: Column(
              children: [
                Text(
                  "LOGO",
                  style: getRegularStyle(fontSize: 55),
                ),
                SizedBox(
                  height: height(context, 0.05),
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores',
                  style: getRegularStyle(fontSize: 18),
                )
              ],
            ),
          )),
    );
  }
}
