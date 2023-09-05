import 'package:medcloud/helper/import_helper.dart';

class ChickBoxsOrderWidget extends StatefulWidget {
  const ChickBoxsOrderWidget({
    super.key,
  });

  @override
  State<ChickBoxsOrderWidget> createState() => _ChickBoxsOrderWidgetState();
}

class _ChickBoxsOrderWidgetState extends State<ChickBoxsOrderWidget> {
  bool checkbox1 = false;
  bool checkbox2 = false;
  bool checkbox3 = false;
  bool checkbox4 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Row(
              children: [
                Checkbox(
                  side: const BorderSide(
                      color: AppColors.lightGrayColor, width: 2),
                  activeColor: AppColors.purpleColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: const BorderSide(color: AppColors.lightGrayColor)),
                  value: checkbox1,
                  onChanged: (value) {
                    setState(() {
                      checkbox1 = value!;
                    });
                  },
                ),
                SizedBox(
                  width: width(context, 0.27),
                  child: Text(
                    Constants.pending,
                    style: getRegularStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  side: const BorderSide(
                      color: AppColors.lightGrayColor, width: 2),
                  activeColor: AppColors.purpleColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: const BorderSide(color: AppColors.lightGrayColor)),
                  value: checkbox2,
                  onChanged: (value) {
                    setState(() {
                      checkbox2 = value!;
                    });
                  },
                ),
                Text(
                  Constants.processing,
                  style: getRegularStyle(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Row(
              children: [
                Checkbox(
                  side: const BorderSide(
                      color: AppColors.lightGrayColor, width: 2),
                  activeColor: AppColors.purpleColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: const BorderSide(color: AppColors.lightGrayColor)),
                  value: checkbox3,
                  onChanged: (value) {
                    setState(() {
                      checkbox3 = value!;
                    });
                  },
                ),
                SizedBox(
                  width: width(context, 0.27),
                  child: Text(
                    Constants.completed,
                    style: getRegularStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  side: const BorderSide(
                      color: AppColors.lightGrayColor, width: 2),
                  activeColor: AppColors.purpleColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: const BorderSide(color: AppColors.lightGrayColor)),
                  value: checkbox4,
                  onChanged: (value) {
                    setState(() {
                      checkbox4 = value!;
                    });
                  },
                ),
                Text(
                  Constants.cancelled,
                  style: getRegularStyle(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              side: const BorderSide(color: AppColors.lightGrayColor, width: 2),
              activeColor: AppColors.purpleColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: const BorderSide(color: AppColors.lightGrayColor)),
              value: checkbox4,
              onChanged: (value) {
                setState(() {
                  checkbox4 = value!;
                });
              },
            ),
            Text(
              Constants.rejected,
              style: getRegularStyle(fontSize: 14),
            ),
          ],
        ),
      ],
    );
  }
}
