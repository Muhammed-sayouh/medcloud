import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/product_item_widget.dart';

class GeneralScreen extends StatefulWidget {
  const GeneralScreen({super.key});

  @override
  State<GeneralScreen> createState() => _GeneralScreenState();
}

class _GeneralScreenState extends State<GeneralScreen> {
  int selectedTap = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BigPadding(),
        Padding(
          padding: EdgeInsets.only(
              left: Constants.getLanguage() == 'ar'
                  ? 0
                  : width(
                      context,
                      0.04,
                    ),
              right:
                  Constants.getLanguage() == 'en' ? 0 : width(context, 0.04)),
          child: SizedBox(
            height: height(context, 0.040),
            width: width(context, 1),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                onTap: () => setState(() {
                  selectedTap = index;
                }),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: selectedTap == index
                          ? AppColors.orangeColor
                          : AppColors.mediumGrayColor,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width(context, 0.04), vertical: 3),
                    child: Center(
                      child: Text(
                        "Category $index",
                        style: getMediumStyle(
                            color: selectedTap == index
                                ? AppColors.orangeColor
                                : AppColors.mediumGrayColor,
                            fontSize: 13),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const BigPadding(),
        Expanded(
            child: Padding(
          padding: commonPaddingHorizental(context),
          child: GridView.builder(
            padding: const EdgeInsets.all(0),
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1 / 1.47,
              crossAxisSpacing: width(context, 0.02),
              mainAxisSpacing: 5,
            ),
            itemBuilder: (context, index) => const ProductItemWidget(
              image:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO278mT7AT7Nzu-J8s71SZX9aT6xTqJRDcTlakMJERvB_3_AtlB6C2YX2TzLi7aQDjXHE&usqp=CAU",
              prand: 'Nova',
              price: "40 SAR",
              title: "blood pressure",
            ),
          ),
        ))
      ],
    );
  }
}
