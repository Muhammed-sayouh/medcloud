import 'package:medcloud/helper/import_helper.dart';

class RegsterDoneScreen extends StatelessWidget {
  const RegsterDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScreen(
        child: Center(
          child: Column(
            children: [
              SizedBox(
height: height(context, 0.1),
              ),
              Card(
                
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SizedBox(
                  width: width(context, 0.9),
                  child: Padding(
                    padding: commonPaddingHorizental(context),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      SizedBox(height: height(context, 0.03),),
                      Text(
                        Constants.thankYou,
                        style: getMediumStyle(
                          color: AppColors.mediumOrangeColor,
                          fontSize: 23,
                        ),
                      ),
                      const BigPadding(),
                      Text(
                        Constants.doneRegisterText,
                        textAlign: TextAlign.center,
                        style: getRegularStyle(fontSize: 14),
                      ),
                      const MediumPadding(),
                      Text(
                        "${Constants.toContactUs} : xxxx@xxx.xxx",
                        textAlign: TextAlign.center,
                        style: getRegularStyle(fontSize: 14),
                      ),
                      SizedBox(height: height(context, 0.04),),
                  
                      const CustomAssetImage(imagePath: Constants.loaderImage,width: 30,height: 30,),
                      const BigPadding(),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
