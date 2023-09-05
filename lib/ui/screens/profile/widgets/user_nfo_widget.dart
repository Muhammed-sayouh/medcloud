import 'package:medcloud/helper/import_helper.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
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
                  height: height(context, 0.10),
                  width: height(context, 0.10),
                  imagePath:
                      "https://einercial.com/wp-content/uploads/2018/04/Facebook-no-profile-picture-icon-620x389.jpg",
                ),
              ),
            ),
            SizedBox(width: width(context, 0.025),),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Doctor Rola Albarakati",
                  style: getMediumStyle(fontSize: 16),
                ),
               const SmallPadding(),

                Text(
                  "+966500000000",
                  style: getRegularStyle(fontSize: 14),
                )
              ],
            )
          ],
        ),
        const Icon(Icons.arrow_forward_ios_rounded , color: AppColors.mediumGrayColor,)
      ],
    );
  }
}
