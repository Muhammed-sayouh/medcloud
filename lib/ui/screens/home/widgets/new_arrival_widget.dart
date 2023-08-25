import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/product_item_widget.dart';

class NewArrivalWdgetHomeScreen extends StatelessWidget {
  const NewArrivalWdgetHomeScreen({super.key});

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
              "https://img.freepik.com/free-photo/black-man-wheelchair-riding-along-park-road_74855-22191.jpg",
          prand: 'Nova',
          price: "40 SAR",
          title: "Wheel chair",
        ),
      ),
    );
  }
}
