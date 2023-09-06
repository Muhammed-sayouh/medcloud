import 'package:flutter/cupertino.dart';
import 'package:medcloud/helper/import_helper.dart';

class QAScreem extends StatelessWidget {
  const QAScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScreenX1(
          title: Constants.qA,
          child: Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) => Padding(
                padding: commonPaddingHorizental(context),
                child: const QACustomWidget(),
              ),
            ),
          )),
    );
  }
}

class QACustomWidget extends StatefulWidget {
  const QACustomWidget({
    super.key,
  });

  @override
  State<QACustomWidget> createState() => _QACustomWidgetState();
}

class _QACustomWidgetState extends State<QACustomWidget> {
  bool expand = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Lorem ipsum",
                  style: getRegularStyle(fontSize: 18),
                ),
                InkWell(
                  onTap: () => setState(() {
                    expand = !expand;
                  }),
                  child: expand
                      ? const Icon(
                          CupertinoIcons.chevron_down,
                        )
                      : Icon(
                          Constants.getLanguage() == 'ar'
                              ? CupertinoIcons.chevron_back
                              : CupertinoIcons.chevron_forward,
                        ),
                ),
              ],
            ),
            !expand
                ? const SizedBox()
                : Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores",
                      style: getRegularStyle(fontSize: 16),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
