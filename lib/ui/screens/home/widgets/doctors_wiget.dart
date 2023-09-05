import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/common_circle_widget.dart';
import 'package:medcloud/ui/screens/doctor_details/doctor_details_screen.dart';

class DoctorsWidgetHomeScreen extends StatelessWidget {
  const DoctorsWidgetHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height(context, 0.16),
      width: width(context, 1),
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => InkWell(
          onTap: () => Navigators.getTo(context, const DoctorDetailsScreen()),
          child: const CommonCircleWidget(
            title: "Doctor",
            image:
                "https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg",
          ),
        ),
      ),
    );
  }
}

