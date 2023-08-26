import 'package:medcloud/helper/import_helper.dart';

class ProductItemWidget extends StatelessWidget {
  final String title;
  final String image;
  final String prand;
  final String price;
  const ProductItemWidget({
    super.key,
    required this.title,
    required this.image,
    required this.prand,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      child: SizedBox(
          width: width(context, 0.43),
          height: height(context, 0.315),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: CustomNetworkImage(
                      imagePath:
                          image,
                      height: height(context, 0.15),
                      width: width(context, 0.43),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: width(context, 0.02),vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                         prand,
                          style: getLightStyle(
                            fontSize: 12,
                            color: AppColors.mediumGrayColor,
                          ),
                        ),
                        SizedBox(
                          height: height(context, 0.005),
                        ),
                        Text(
                          title,
                          style: getRegularStyle(
                            fontSize: 14,
                            color: AppColors.blackColor,
                          ),
                        ),
                        SizedBox(
                          height: height(context, 0.007),
                        ),
                        Text(
                          price,
                          style: getMediumStyle(
                            fontSize: 16,
                            color: AppColors.blackColor,
                          ),
                        ),
                        SizedBox(
                          height: height(context, 0.015),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: AppColors.purpleColor)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width(context, 0.02), vertical: 5),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.shopping_cart_rounded,
                                    color: AppColors.purpleColor,
                                    size: 20,
                                  ),
                                  const MediumPadding(
                                    horizental: true,
                                  ),
                                  Text(
                                    Constants.addToCart,
                                    style: getRegularStyle(
                                      fontSize: 13,
                                      color: AppColors.purpleColor,
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(108, 0, 0, 0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.favorite,
                          color: AppColors.whiteColor,
                          size: 20,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(108, 0, 0, 0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.share,
                          color: AppColors.whiteColor,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
