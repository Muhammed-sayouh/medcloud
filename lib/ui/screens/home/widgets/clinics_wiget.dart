import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/common_circle_widget.dart';
import 'package:medcloud/ui/screens/clinic_details/clinic_details_screen.dart';

class ClinicsWidgetHomeScreen extends StatelessWidget {
  const ClinicsWidgetHomeScreen({
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
          onTap: () => Navigators.getTo(context, const ClinicDetailsScreen()),
          child: const CommonCircleWidget(
            title: "Clinic Name",
            image:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3iAm-ntMOKQ98K8mbDJBfIuvNnl_mkfAxIrvaAKFF21lSzPtGJeFY-pFAgvt40zUjwSU&usqp=CAU",
          ),
        ),
      ),
    );
  }
}

