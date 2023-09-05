import 'package:medcloud/helper/import_helper.dart';

class OrderSummaryWidget extends StatefulWidget {
  final String title;
  final String widget;
  final Color widgetColor;
  final bool hideDivider;
  const OrderSummaryWidget({
    super.key,
    required this.title,
    required this.widget,
    this.hideDivider = true,   this.widgetColor = AppColors.blackColor,
  });

  @override
  State<OrderSummaryWidget> createState() => _OrderSummaryWidgetState();
}

class _OrderSummaryWidgetState extends State<OrderSummaryWidget> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width(
                context,
                0.03,
              ),
              vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: getRegularStyle(fontSize: 14),
              ),
              Text(
                "${widget.widget} ${Constants.sar}",
                style: getRegularStyle(fontSize: 14 , color:widget.widgetColor ),
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
                  height: 10,
                ),
              ),
      ],
    );
  }
}
