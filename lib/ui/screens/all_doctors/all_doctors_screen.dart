import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/common_circle_widget.dart';
import 'package:medcloud/ui/screens/all_doctors/widgets/show_filter_doctors_buttom_sheet.dart';
import 'package:medcloud/ui/screens/doctor_details/doctor_details_screen.dart';

class AllDoctorsScreen extends StatefulWidget {
  const AllDoctorsScreen({super.key});

  @override
  State<AllDoctorsScreen> createState() => _AllDoctorsScreenState();
}

class _AllDoctorsScreenState extends State<AllDoctorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScreenX1(
        title: Constants.doctors,
        changedColseIconWidget: InkWell(
          onTap: () => showFilterAllDoctorsButtomSheet(context),
          child: const Icon(
            Icons.search,
            color: AppColors.whiteColor,
            size: 30,
          ),
        ),
        child: Expanded(
          child: GridView.builder(
            padding: EdgeInsets.zero,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemBuilder: (context, index) => InkWell(
              onTap: () =>
                  Navigators.getTo(context, const DoctorDetailsScreen()),
              child: const CommonCircleWidget(
                title: "Doctor Name",
                image:
                    "https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
