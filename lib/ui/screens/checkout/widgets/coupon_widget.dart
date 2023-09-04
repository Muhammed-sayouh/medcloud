import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/custom_button.dart';

class PromoCodeWidget extends StatefulWidget {
  const PromoCodeWidget({
    super.key,
  });

  @override
  State<PromoCodeWidget> createState() => _PromoCodeWidgetState();
}

class _PromoCodeWidgetState extends State<PromoCodeWidget> {
  bool expand = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Constants.couponVoucher,
              style: getMediumStyle(fontSize: 15),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  expand = !expand;
                });
              },
              child: Text(
                Constants.applyNow,
                style:
                    getRegularStyle(fontSize: 13, color: AppColors.purpleColor),
              ),
            ),
          ],
        ),
       !expand?const SizedBox() :   const MediumPadding(),
      !expand?const SizedBox() : Row(
          children: [
            Expanded(
                child: TextFormField(
              decoration: InputDecoration(
                  hintText: Constants.promoCode,
                  hintStyle: getMediumStyle(color: AppColors.lightGrayColor),
                  fillColor: AppColors.whiteColor,
                  isDense: true,
                  contentPadding: const EdgeInsets.all(12)),
            )),
            const SmallPadding(
              horizental: true,
            ),
            CustomButton(
              title: Constants.apply,
              widthRatio: 0.28,
              hightRatio: 0.055,
            )
          ],
        )
      ],
    );
  }
}
