import 'package:medcloud/helper/import_helper.dart';

class TitleWdget extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final String subTitle;
  const TitleWdget(
      {super.key, required this.title, this.onTap, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: getMediumStyle(color: AppColors.blackColor, fontSize: 20),
        ),
        InkWell(
          onTap: onTap,
          child: Text(subTitle,
          style: getMediumStyle(color: AppColors.mediumOrangeColor, fontSize: 15),),
        ),
      ],
    );
  }
}
