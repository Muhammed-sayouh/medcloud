import 'package:medcloud/helper/import_helper.dart';

class StepProgressView extends StatelessWidget {
  final double width;

  final List<String> titles;
  final int curStep;
  final Color activeColor;
  final Color inactiveColor;
  final double lineWidth = 3.0;

  const StepProgressView(
      {super.key,
      this.inactiveColor = AppColors.lightGrayColor,
      required this.width,
      required this.titles,
      required this.curStep,
      required this.activeColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: Constants.getLanguage() == 'ar'
                    ? MediaQuery.of(context).size.width * 0.015
                    : MediaQuery.of(context).size.width * 0.035,
                right: Constants.getLanguage() == 'ar'
                    ? MediaQuery.of(context).size.width * 0.028
                    : MediaQuery.of(context).size.width * 0.065,
              ),
              child: Row(
                children: _iconViews(),
              ),
            ),
            // const SizedBox(
            //   height: 8,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _titleViews(),
            ),
          ],
        ));
  }

  List<Widget> _iconViews() {
    var list = <Widget>[];
    titles.asMap().forEach((i, icon) {
      var circleColor =
          (i == 0 || curStep > i + 1) ? activeColor : inactiveColor;
      var lineColor = curStep > i + 1 ? activeColor : inactiveColor;

      list.add(
        Container(
          padding: const EdgeInsets.all(0),
          decoration: BoxDecoration(
            color: circleColor,
            shape: BoxShape.circle,
            border: Border.all(
              color: circleColor,
              width: 2.0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              "${i + 1}",
              style: getMediumStyle(color: AppColors.whiteColor),
            ),
          ),
        ),
      );

      //line between icons
      if (i != titles.length - 1) {
        list.add(Expanded(
            child: Container(
          height: lineWidth,
          color: lineColor,
        )));
      }
    });

    return list;
  }

  List<Widget> _titleViews() {
    var list = <Widget>[];
    titles.asMap().forEach((i, text) {
      list.add(
        Text(
          text,
          style: getMediumStyle(
              color: i == 0 ? AppColors.orangeColor : inactiveColor),
        ),
      );
    });
    return list;
  }
}
