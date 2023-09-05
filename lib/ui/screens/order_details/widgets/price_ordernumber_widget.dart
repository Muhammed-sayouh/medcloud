import 'package:medcloud/helper/import_helper.dart';

class PriceOrderNumberWidget extends StatelessWidget {
  const PriceOrderNumberWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child:           Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "1294365Ca",
                  style: getMediumStyle(color: AppColors.purpleColor),
                ),
                Text(
                  "12 Apr 2021",
                  style: getMediumStyle().copyWith(height: 1.6),
                ),
              ],
            ),
            Text(
              "${Constants.totalCost} : 27 ${Constants.sar}",
              style: getMediumStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
