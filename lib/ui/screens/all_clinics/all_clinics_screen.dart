import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/common_circle_widget.dart';
import 'package:medcloud/ui/screens/all_clinics/widgets/show_filter_clinics_buttom_sheet.dart';
import 'package:medcloud/ui/screens/clinic_details/clinic_details_screen.dart';

class AllClinincsScreen extends StatefulWidget {
  const AllClinincsScreen({super.key});

  @override
  State<AllClinincsScreen> createState() => _AllClinincsScreenState();
}

class _AllClinincsScreenState extends State<AllClinincsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScreenX1(
        title: Constants.clinics,
        changedColseIconWidget: InkWell(
          onTap: () => showFilterAllClinicsButtomSheet(context),
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
                  Navigators.getTo(context, const ClinicDetailsScreen()),
              child: const CommonCircleWidget(
                title: "Clinic Name",
                image:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3iAm-ntMOKQ98K8mbDJBfIuvNnl_mkfAxIrvaAKFF21lSzPtGJeFY-pFAgvt40zUjwSU&usqp=CAU",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
