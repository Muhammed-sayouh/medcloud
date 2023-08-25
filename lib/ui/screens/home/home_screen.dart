import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/title_widget.dart';
import 'package:medcloud/ui/custom_widgets/top_search_bar_wdget.dart';
import 'package:medcloud/ui/screens/home/widgets/best_product_widget.dart';
import 'package:medcloud/ui/screens/home/widgets/clinics_wiget.dart';
import 'package:medcloud/ui/screens/home/widgets/doctors_wiget.dart';
import 'package:medcloud/ui/screens/home/widgets/new_arrival_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomScreen(
          hideBack: true,
          hideClose: true,
          extraWidget: const TopSearchBarWdget(),
          child: Padding(
            padding: commonPaddingHorizental(
              context,
              virtical: height(context, 0.01),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox(
                    height: height(context, 0.15),
                    width: width(context, 1),
                    child: Image.network(
                      "https://www.interdent.com/gentle-dental/wp-content/uploads/sites/2/2019/02/bigstock-195196330.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: height(context, 0.03),
                ),
                TitleWdget(
                  title: Constants.clinics,
                  subTitle: Constants.viewAll,
                ),
                const SmallPadding(),
                const ClinicsWidgetHomeScreen(),
                TitleWdget(
                  title: Constants.doctors,
                  subTitle: Constants.viewAll,
                ),
                const SmallPadding(),
                const DoctorsWidgetHomeScreen(),
                TitleWdget(
                  title: Constants.newArrival,
                  subTitle: Constants.viewAll,
                ),
                const SmallPadding(),
                const NewArrivalWdgetHomeScreen(),
              
                SizedBox(height: height(context, 00.02),),
                  TitleWdget(
                  title: Constants.bestProducts,
                  subTitle: Constants.viewAll,
                ),
                const SmallPadding(),
                const BestProductHomeScreen(),
              ],
            ),
          )),
    );
  }
}
