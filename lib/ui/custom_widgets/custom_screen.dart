import 'package:medcloud/helper/import_helper.dart';

class CustomScreen extends StatelessWidget {
  final Widget child;
  const CustomScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: width(context, 1),
          height: height(context, 0.2),
          child: Image.asset(
            Constants.headerImage,
            fit: BoxFit.fill,
          ),
        ),
        child
      ],
    );
  }
}
