import 'package:medcloud/helper/import_helper.dart';

class DoctorInfoWidget extends StatelessWidget {
  const DoctorInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(500),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(500),
            child: CustomNetworkImage(
              height: height(context, 0.12),
              width: height(context, 0.12),
              imagePath:
                  "https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg",
            ),
          ),
        ),
        SizedBox(width: width(context, 0.025),),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Doctor Name",
              style: getMediumStyle(fontSize: 20),
            ),
            Row(
              children: [
                const Icon(Icons.location_on),
                const SmallPadding(
                  horizental: true,
                ),
                Text(
                  "Ksa, Makkah",
                  style: getRegularStyle(fontSize: 14),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
