import 'package:flutter/cupertino.dart';
import 'package:medcloud/helper/import_helper.dart';

class ExpandedFilterdWidget extends StatefulWidget {
  final String title;
  final Widget? widget;
  final bool hideDivider ;
  const ExpandedFilterdWidget({
    super.key,
    required this.title,
    this.widget,  this.hideDivider = false,
  });

  @override
  State<ExpandedFilterdWidget> createState() => _ExpandedFilterdWidgetState();
}

class _ExpandedFilterdWidgetState extends State<ExpandedFilterdWidget> {
  bool expanded = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          expanded = !expanded;
        });
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: getRegularStyle(fontSize: 15),
              ),
               Icon(
            expanded ? CupertinoIcons.chevron_down:  Constants.getLanguage() == 'ar'?CupertinoIcons.chevron_back :CupertinoIcons.chevron_forward,
                size: 20,
              ),
            ],
          ),
          expanded ? widget.widget! : const SizedBox(),
        widget.hideDivider? const SizedBox(): const Divider(
            color: AppColors.lightGrayColor,
          ),
        ],
      ),
    );
  }
}

