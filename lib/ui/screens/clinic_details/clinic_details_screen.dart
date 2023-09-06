import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/product_item_widget.dart';
import 'package:medcloud/ui/custom_widgets/title_widget.dart';
import 'package:medcloud/ui/screens/clinic_details/widgets/info_widget.dart';

import '../categories/widgets/show_filter_buttom_sheet.dart';

class ClinicDetailsScreen extends StatelessWidget {
  const ClinicDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScreenX1(
          
          changedColseIconWidget: InkWell(
              onTap: () => showFilterButtomSheet(context),
              child: const Icon(
                Icons.filter_alt,
                color: Colors.white,
              )),
          child: SizedBox(
            height: height(context, 0.8),
            child: SingleChildScrollView(
              child: Padding(
                padding: commonPaddingHorizental(context),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const ClinicInfoClinicDetailsScreenWidget(),
                    const BigPadding(),
                    SizedBox(
                      child: Text(
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut",
                        style: getRegularStyle(fontSize: 12),
                      ),
                    ),
                    const MediumPadding(),
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
                    const MediumPadding(),
                    TitleWdget(
                      title: Constants.clinicProduct,
                      subTitleColor: AppColors.mediumGrayColor,
                      subTitle: "20 ${Constants.products}",
                    ),
                    const MediumPadding(),
                    GridView.builder(
                      
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(0),
                      itemCount: 10,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1 / 1.46,
                        mainAxisSpacing: 5,
                        
                      ),
                      itemBuilder: (context, index) =>
                          const ProductItemWidget(
                        image:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO278mT7AT7Nzu-J8s71SZX9aT6xTqJRDcTlakMJERvB_3_AtlB6C2YX2TzLi7aQDjXHE&usqp=CAU",
                        prand: 'Nova',
                        price: "40 SAR",
                        title: "blood pressure",
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
