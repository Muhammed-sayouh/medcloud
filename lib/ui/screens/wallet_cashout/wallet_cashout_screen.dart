import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/custom_button.dart';
import 'package:medcloud/ui/custom_widgets/dialogs.dart';

class WalletCashOut extends StatelessWidget {
  const WalletCashOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darckWhiteColor,
      body: CustomScreen(
        hideClose: true,
        title: Constants.wallet,
        child: Padding(
          padding: commonPaddingHorizental(context),
          child: Column(children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    RowItemWalletCashoutWidget(
                      content: 'AlRajhi Bank',
                      title: Constants.bankName,
                    ),
                    RowItemWalletCashoutWidget(
                      content: 'Rola Albarakati',
                      title: Constants.accountName,
                    ),
                    RowItemWalletCashoutWidget(
                      content: '4567890987654',
                      title: Constants.accountNumber,
                    ),
                    RowItemWalletCashoutWidget(
                      content: 'SA0000000004567890987654',
                      title: Constants.iBAN,
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          children: [
                            const Spacer(),
                            const Icon(Icons.delete),
                            Text(Constants.delete),
                          ],
                        ))
                  ],
                ),
              ),
            ),
            const BigPadding(),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () => customDialogWidget(
                    context,
                    widget: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormAddBankAccount(
                          title: Constants.bankName,
                        ),
                        TextFormAddBankAccount(
                          title: Constants.accountName,
                        ),
                        TextFormAddBankAccount(
                          title: Constants.accountNumber,
                        ),
                        TextFormAddBankAccount(
                          title: Constants.iBAN,
                        ),
                        BigPadding(),
                        Row(
                          children: [
                            CustomButton(
                              onPressed: () => Navigators.back(context),
                              title: Constants.cancel,
                              textColor: AppColors.purpleColor,
                              backgroundColor: AppColors.whiteColor,
                              borderColor: AppColors.purpleColor,
                          widthRatio: 0.3,
                              hightRatio: 0.05,
                            ),
                            const MediumPadding(horizental: true,),
                            CustomButton(
                              title: Constants.save,
                              widthRatio: 0.3,
                              hightRatio: 0.05,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  child: Row(children: [
                    const Icon(
                      Icons.add,
                    ),
                    const SmallPadding(
                      horizental: true,
                    ),
                    Text(
                      Constants.addNewAccount,
                      style: getMediumStyle(
                        fontSize: 16,
                      ),
                    ),
                  ]),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class TextFormAddBankAccount extends StatelessWidget {
  final String title;
  const TextFormAddBankAccount({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width(context, 0.02)),
          child: Text(
            title,
            style: getRegularStyle(fontSize: 13),
          ),
        ),
        const SmallPadding(),
        TextFormField(
          decoration: InputDecoration(
            hintText: title,
            hintStyle: getRegularStyle(color: AppColors.lightGrayColor),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          ),
        ),
        const MediumPadding(),
      ],
    );
  }
}

class RowItemWalletCashoutWidget extends StatelessWidget {
  final String title;
  final String content;
  const RowItemWalletCashoutWidget({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          SizedBox(
            width: width(context, 0.4),
            child: Text(
              title,
              style: getMediumStyle(fontSize: 14, color: AppColors.purpleColor),
            ),
          ),
          SizedBox(
            width: width(context, 0.4),
            child: Text(
              content,
              style: getMediumStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
