import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/product_item_widget.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      hideBack: true,
      hideClose: true,
        title: Constants.wishlist,
        child: Expanded(
          child: Padding(
        padding: commonPaddingHorizental(context),
        child: GridView.builder(
          padding: const EdgeInsets.all(0),
          itemCount: 3,
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
        )));
  }
}
