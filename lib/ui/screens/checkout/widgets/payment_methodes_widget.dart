import 'package:medcloud/helper/import_helper.dart';

class PaymentMethodesWidget extends StatefulWidget {
  final String title;
  final String widget;
  final bool hideDivider;
  const PaymentMethodesWidget({
    super.key,
    required this.title,
    required this.widget,
    this.hideDivider = false,
  });

  @override
  State<PaymentMethodesWidget> createState() => _PaymentMethodesWidgetState();
}

class _PaymentMethodesWidgetState extends State<PaymentMethodesWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
               padding: EdgeInsets.only(
          right: Constants.getLanguage() == 'ar' ? 0 : 10,
          left: Constants.getLanguage() == 'en' ? 0 : 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    side: const BorderSide(
                        color: AppColors.lightGrayColor, width: 2),
                    activeColor: AppColors.purpleColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side:
                            const BorderSide(color: AppColors.lightGrayColor)),
                    value: isSelected,
                    onChanged: (value) {
                      setState(() {
                        isSelected = value!;
                      });
                    },
                  ),
                  // MediumPadding(
                  //   horizental: true,
                  // ),
                  Text(
                    widget.title,
                    style: getRegularStyle(fontSize: 14),
                  )
                ],
              ),
              CustomAssetImage(
                imagePath: widget.widget,
              )
            ],
          ),
        ),
        widget.hideDivider
            ? const SizedBox()
            : const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                  thickness: 0.8,
                  height: 0,
                ),
            ),
      ],
    );
  }
}