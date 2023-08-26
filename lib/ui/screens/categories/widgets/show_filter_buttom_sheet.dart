import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/screens/categories/widgets/check_box_widget.dart';
import 'package:medcloud/ui/screens/categories/widgets/filtered_by_widgets.dart';

void showFilterButtomSheet(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
    ),
    context: context,
    builder: (context) {
      return Container(
        height: height(context, 0.8),
        width: width(context, 1),
        decoration: const BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Padding(
          padding: commonPaddingHorizental(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BigPadding(),
              Center(
                child: Container(
                  height: 4,
                  width: width(context, 0.5),
                  decoration: BoxDecoration(
                    color: AppColors.darkGrayColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              SizedBox(
                height: height(context, 0.06),
              ),
              Text(
                Constants.sortBy,
                style: getMediumStyle(fontSize: 18),
              ),
              const SmallPadding(),
              const ChickBoxsWidget(),
              const BigPadding(),
              Text(
                Constants.filterBy,
                style: getMediumStyle(fontSize: 18),
              ),
              const SmallPadding(),
              const FilteredByWidgets(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigators.back(context),
                    child: Container(
                      height: height(context, 0.055),
                      width: width(context, 0.4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: AppColors.purpleColor,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          Constants.clear,
                          style: getMediumStyle(color: AppColors.purpleColor),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: height(context, 0.055),
                    width: width(context, 0.4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                     
                        color: AppColors.purpleColor,
                
                    ),
                    child: Center(
                      child: Text(
                        Constants.apply,
                        style: getMediumStyle(color: AppColors.whiteColor),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}
