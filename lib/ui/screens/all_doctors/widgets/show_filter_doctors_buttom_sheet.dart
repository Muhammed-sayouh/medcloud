import 'package:medcloud/helper/import_helper.dart';

void showFilterAllDoctorsButtomSheet(
  BuildContext context,
) {
  showModalBottomSheet(
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
    ),
    context: context,
    builder: (context) {
      return Container(
        height: height(context, 0.9),
        width: width(context, 1),
        decoration: const BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Padding(
          padding: commonPaddingHorizental(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const BigPadding(),
              Center(
                child: Container(
                  height: 4,
                  width: width(context, 0.5),
                  decoration: BoxDecoration(
                    color: AppColors.darkGrayColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              const MediumPadding(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 2,
                    child: Container(
                      width: width(context, 0.75),
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(children: [
                        Container(
                          height: height(context, 0.05),
                          width: width(context, 0.1),
                          decoration: BoxDecoration(
                            color: AppColors.orangeColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Constants.getLanguage() == 'en'
                                  ? const Radius.circular(10)
                                  : Radius.zero,
                              topLeft: Constants.getLanguage() == 'en'
                                  ? const Radius.circular(10)
                                  : Radius.zero,
                              bottomRight: Constants.getLanguage() != 'en'
                                  ? const Radius.circular(10)
                                  : Radius.zero,
                              topRight: Constants.getLanguage() != 'en'
                                  ? const Radius.circular(10)
                                  : Radius.zero,
                            ),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.search,
                              color: AppColors.whiteColor,
                              size: 20,
                            ),
                          ),
                        ),
                        Expanded(
                            child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "doctor name",
                              hintStyle: getRegularStyle(
                                  color: AppColors.lightGrayColor),
                              border: InputBorder.none,
                              errorBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                              isDense: true,
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 10)),
                        )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: SizedBox(
                            width: 24,
                            height: 18,
                            child: InkWell(
                              onTap: () => Navigators.back(context),
                              child: const Icon(
                                Icons.cancel_outlined,
                                color: AppColors.mediumOrangeColor,
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigators.back(context),
                    child: Text(
                      Constants.cancel,
                      style: getRegularStyle(),
                    ),
                  )
                ],
              ),
              const Items(),
            ],
          ),
        ),
      );
    },
  );
}

class Items extends StatelessWidget {
  const Items({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height(context, 0.8),
      child: ListView.builder(
        itemCount: 3,
        padding: const EdgeInsets.only(top: 10),
        itemBuilder: (context, index) => Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(500),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(500),
                      child: CustomNetworkImage(
                        height: height(context, 0.09),
                        width: height(context, 0.09),
                        imagePath:
                            "https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width(context, 0.025),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Doctor Name",
                        style: getMediumStyle(fontSize: 13),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            size: 18,
                          ),
                          const SmallPadding(
                            horizental: true,
                          ),
                          Text(
                            "Ksa, Makkah",
                            style: getRegularStyle(fontSize: 10),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
