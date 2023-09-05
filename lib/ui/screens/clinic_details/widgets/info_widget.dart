import 'package:medcloud/helper/import_helper.dart';

class ClinicInfoClinicDetailsScreenWidget extends StatelessWidget {
  const ClinicInfoClinicDetailsScreenWidget({
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
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3iAm-ntMOKQ98K8mbDJBfIuvNnl_mkfAxIrvaAKFF21lSzPtGJeFY-pFAgvt40zUjwSU&usqp=CAU",
            ),
          ),
        ),
        SizedBox(width: width(context, 0.025),),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Clinic Name",
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
