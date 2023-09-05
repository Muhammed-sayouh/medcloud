import 'package:flutter/cupertino.dart';
import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/screens/address/address_screen.dart';
import 'package:medcloud/ui/screens/intro/intro_screen.dart';
import 'package:medcloud/ui/screens/orders/orders_screen.dart';
import 'package:medcloud/ui/screens/profile/widgets/user_nfo_widget.dart';
import 'package:medcloud/ui/screens/wallet/wallet_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      
      hideBack: true,
      hideClose: true,
      child: Padding(
        padding: commonPaddingHorizental(context),
        child: Column(
          children: [
            const UserInfoWidget(),
            const Divider(height: 40, thickness: 1.5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TapsProfleWidget(
                  onTap: () => Navigators.getTo(context, const OrdersScreen()),
                  image: CupertinoIcons.doc_plaintext,
                  title: Constants.orders,
                ),
                TapsProfleWidget(
                    onTap: () => Navigators.getTo(context, const WalletScreen()),
                  image: Icons.account_balance_wallet_rounded,
                  title: Constants.wallet,
                ),
                TapsProfleWidget(
                    onTap: () => Navigators.getTo(context, const AddAressProfileScreen()),
                  image: CupertinoIcons.location_solid,
                  title: Constants.address,
                ),
              ],
            ),
            SizedBox(
              height: height(context, 0.03),
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Column(
                  children: [
                    RowItemIntroScreen(
                      title: Constants.language,
                      endText: Constants.getLanguage() == 'ar'
                          ? "العربية"
                          : "English",
                    ),
                    const Divider(),
                    RowItemIntroScreen(

                      title: Constants.aboutUs,
                    ),
                    const Divider(),
                    RowItemIntroScreen(
                      title: Constants.termsAndConditions,
                    ),
                    const Divider(),
                    RowItemIntroScreen(
                      title: Constants.qA,
                    ),
                    const Divider(),
                    RowItemIntroScreen(
                      title: Constants.helpCenter,
                    ),
                    const Divider(),
                    Row(
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.logout_outlined, color: AppColors.purpleColor),
                            const SmallPadding(horizental: true,),
                            Text(
                              Constants.signOut,
                              style: getRegularStyle(
                                  fontSize: 14, color: AppColors.purpleColor),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TapsProfleWidget extends StatelessWidget {
  final String title;
  final IconData image;
 final void Function()? onTap;
  const TapsProfleWidget({
    super.key,
    required this.title,
    required this.image, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: AppColors.orangeColor,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                image,
                color: AppColors.whiteColor,
                size: 40,
              ),
            ),
          ),
          const SmallPadding(),
          Text(
            title,
            style: getRegularStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
