import 'package:medcloud/helper/import_helper.dart';

class TopSearchBarWdget extends StatelessWidget {
  const TopSearchBarWdget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: height(context, 0.11)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 2,
            child: Container(
              width: width(context, 0.78),
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
                  decoration:  InputDecoration(
                    hintText: Constants.hintSearch,
                    hintStyle:getRegularStyle(color: AppColors.lightGrayColor) ,
                      border: InputBorder.none,
                      errorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 10)),
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    width: 24,
                    height: 18,
                    child: Image.asset(Constants.searchImage),
                  ),
                )
              ]),
            ),
          ),
          const MediumPadding(
            horizental: true,
          ),
          const Icon(
            Icons.notifications,
            color: AppColors.whiteColor,
            size: 30,
          ),
        ],
      ),
    );
  }
}
