import 'package:flutter/cupertino.dart';
import 'package:medcloud/helper/import_helper.dart';

class ExpandedItemDetailsWdget extends StatefulWidget {
  final String title;
  final Widget widget;
  const ExpandedItemDetailsWdget({
    super.key,
    required this.title,
    required this.widget,
  });

  @override
  State<ExpandedItemDetailsWdget> createState() =>
      _ExpandedItemDetailsWdgetState();
}

class _ExpandedItemDetailsWdgetState extends State<ExpandedItemDetailsWdget> {
  bool expanded = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: getMediumStyle(fontSize: 14),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    expanded = !expanded;
                  });
                },
                child: !expanded
                    ? const Icon(
                        CupertinoIcons.chevron_right,
                        size: 22,
                      )
                    : const Icon(
                        CupertinoIcons.chevron_down,
                        size: 22,
                      ),
              ),
            ],
          ),
          const MediumPadding(),
          expanded ? widget.widget : const SizedBox(),
        ],
      ),
    );
  }
}
