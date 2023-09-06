import 'package:medcloud/helper/import_helper.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScreenX1(
        title: Constants.notifications,
        changedColseIconWidget: const Icon(
          Icons.delete,
          color: AppColors.whiteColor,
          size: 30,
        ),
        child: Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 10,
            itemBuilder: (context, index) => Padding(
              padding: commonPaddingHorizental(context),
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.symmetric(vertical: 5),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 28,
                        backgroundColor: AppColors.orangeColor,
                        backgroundImage: AssetImage(Constants.logoImage),
                      ),
                      const SmallPadding(
                        horizental: true,
                      ),
                      SizedBox(
                        width: width(context, 0.71),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod",
                          style: getRegularStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
