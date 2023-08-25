import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/product_item_widget.dart';

class BestProductHomeScreen extends StatelessWidget {
  const BestProductHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height(context, 0.315),
      width: width(context, 1),
      child: ListView.builder(
        itemCount: 2,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const ProductItemWidget(
          image:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO278mT7AT7Nzu-J8s71SZX9aT6xTqJRDcTlakMJERvB_3_AtlB6C2YX2TzLi7aQDjXHE&usqp=CAU",
          prand: 'Nova',
          price: "40 SAR",
          title: "blood pressure",
        ),
      ),
    );
  }
}
