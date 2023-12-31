import 'package:medcloud/helper/import_helper.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PercentageBarWidget extends StatelessWidget {
  const PercentageBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: commonPaddingHorizental(context),
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
            children: [
              Text(Constants.wantFreeShippingAdd,style: getRegularStyle(fontSize: 12),),
              Text(" 120 ${Constants.sar} ",style: getRegularStyle(fontSize: 12,color: AppColors.orangeColor),),
              Text(Constants.more,style: getRegularStyle(fontSize: 12),),
            ],
          ),
            const SmallPadding(),
               LinearPercentIndicator(
                padding: EdgeInsets.zero,
                  width:width(context, 0.9),
                  barRadius: const Radius.circular(5),
                  lineHeight: 10.0,
                  percent: 0.8,
                  backgroundColor:AppColors.lightGrayColor,
                  progressColor:AppColors.orangeColor,
                ),
                const MediumPadding()
                
        ]),
      ),
    );
  }
}
