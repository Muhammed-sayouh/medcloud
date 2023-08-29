import 'package:flutter/cupertino.dart';
import 'package:medcloud/helper/import_helper.dart';

class CartItemWidget extends StatefulWidget {
  final String title;
  final String image;
  final String prand;
  final String price;
  const CartItemWidget({
    super.key,
    required this.title,
    required this.image,
    required this.prand,
    required this.price,
  });

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 5,
        child: SizedBox(
          height: height(context, 0.12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    child: CustomNetworkImage(
                      imagePath: widget.image,
                      height: height(context, 0.12),
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
                          widget.prand,
                          style: getLightStyle(
                            fontSize: 12,
                            color: AppColors.mediumGrayColor,
                          ),
                        ),
                        SizedBox(
                          height: height(context, 0.005),
                        ),
                        Text(
                          widget.title,
                          style: getRegularStyle(
                            fontSize: 14,
                            color: AppColors.blackColor,
                          ),
                        ),
                        SizedBox(
                          height: height(context, 0.007),
                        ),
                        Text(
                          "${widget.price} ${Constants.sar}" ,
                          style: getMediumStyle(
                            fontSize: 16,
                            color: AppColors.blackColor,
                          ),
                        ),
                        SizedBox(
                          height: height(context, 0.015),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(
                    right: Constants.getLanguage() == 'ar' ? 0 : 5,
                    left: Constants.getLanguage() == 'en' ? 0 : 5,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.lightGrayColor),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(children: [
                    InkWell(
                        onTap: () {
                          if (count > 1) {
                            setState(() {
                              count--;
                            });
                          }
                        },
                        child:  Icon(
                          CupertinoIcons.minus,
                          size: 18,
                          color: count > 1?AppColors.orangeColor:AppColors.lightGrayColor,
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Text(count.toString()),
                    ),
                    InkWell(
                        onTap: () {
                          setState(() {
                            count++;
                          });
                        },
                        child: const Icon(
                          CupertinoIcons.add,
                          size: 18,
                          color: AppColors.orangeColor,
                        )),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
