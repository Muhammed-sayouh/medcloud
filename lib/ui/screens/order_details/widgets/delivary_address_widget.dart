import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/screens/map/widgets/show_address_buttom_sheet.dart';

class DelivaryAddressWidget extends StatelessWidget {
  final bool profileScreen;
  const DelivaryAddressWidget({
    super.key,
    this.profileScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            DelivartAddressesWidget(
              title: Constants.addAddress,
              content: "Makkah - Jumum , Road Abu Urwah",
            ),
            DelivartAddressesWidget(
              title: Constants.fullName,
              content: "Salma AlEmirati",
            ),
            DelivartAddressesWidget(
              title: Constants.mobileNumber,
              content: "+966509000000",
            ),
            DelivartAddressesWidget(
              title: Constants.location,
              content: "AlJamoum",
            ),
            !profileScreen
                ? const SizedBox()
                : const Divider(
                    thickness: 2,
                  ),
            !profileScreen
                ? const SizedBox()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () => showAddressButtomSheet(
                                      context, "Makkah, Jumum, 2124354657543",
                                      noAction: true),
                                  child: Row(
                                    children: [
                                      const Icon(Icons.edit),
                                      Text(Constants.edit),
                                    ],
                                  ),
                                ),
                                const MediumPadding(
                                  horizental: true,
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.delete),
                                    Text(Constants.delete),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}

class DelivartAddressesWidget extends StatelessWidget {
  final String title;
  final String content;
  const DelivartAddressesWidget({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: [
          SizedBox(
            width: width(context, 0.35),
            child: Text(
              title,
              style: getMediumStyle(color: AppColors.purpleColor),
            ),
          ),
          SizedBox(
              width: width(context, 0.5),
              child: Text(content,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: getMediumStyle())),
        ],
      ),
    );
  }
}
