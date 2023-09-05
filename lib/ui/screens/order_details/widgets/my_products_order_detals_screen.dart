import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/screens/order_details/widgets/stteper_widgt.dart';

class MyProductsOrderDetalsScreen extends StatelessWidget {
  const MyProductsOrderDetalsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          color: AppColors.purpleColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: SizedBox(
            height: height(context, 0.28),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: height(context, 0.014)),
                  child: Text(
                    Constants.reorder,
                    style: getRegularStyle(
                        fontSize: 14, color: AppColors.whiteColor),
                  ),
                )),
          ),
        ),
        Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(children: [
            const EasyStepperCustom(activeStep: 2),
            const Divider(
              thickness: 2,
              height: 0,
            ),
            SizedBox(
              height: height(context, 0.125),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Constants.getLanguage() == 'ar'
                              ? Radius.zero
                              : const Radius.circular(10),
                          bottomRight: Constants.getLanguage() == 'en'
                              ? Radius.zero
                              : const Radius.circular(10),
                        ),
                        child: CustomNetworkImage(
                          imagePath:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO278mT7AT7Nzu-J8s71SZX9aT6xTqJRDcTlakMJERvB_3_AtlB6C2YX2TzLi7aQDjXHE&usqp=CAU",
                          height: height(context, 0.125),
                          width: width(context, 0.32),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width(context, 0.02), vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'NOVA',
                              style: getLightStyle(
                                fontSize: 12,
                                color: AppColors.mediumGrayColor,
                              ),
                            ),
                            SizedBox(
                              height: height(context, 0.005),
                            ),
                            Text(
                              'Wheelchair',
                              style: getRegularStyle(
                                fontSize: 14,
                                color: AppColors.blackColor,
                              ),
                            ),
                            SizedBox(
                              height: height(context, 0.005),
                            ),
                            Text(
                              "27 ${Constants.sar}",
                              style: getMediumStyle(
                                fontSize: 16,
                                color: AppColors.blackColor,
                              ),
                            ),
                            SizedBox(
                              height: height(context, 0.005),
                            ),
                            Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${Constants.qty} : 1',
                                  style: getLightStyle(
                                    fontSize: 12,
                                    color: AppColors.mediumGrayColor,
                                  ),
                                ),
                                SizedBox(width: width(context, 0.12),),
                                Row(
                              
                                  
                                  children: [
                                  Icon(Icons.star,color: AppColors.orangeColor,size: 13,),
                                    Text(
                                  Constants.reviewProduct,
                                  style: getRegularStyle(
                                    fontSize: 12,
                                    color: AppColors.orangeColor,
                                  ),
                                ),
                                ],)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
