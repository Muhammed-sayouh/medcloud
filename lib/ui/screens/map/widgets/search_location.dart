
import 'package:flutter/cupertino.dart';
import 'package:medcloud/helper/import_helper.dart';
import 'search_location_widget.dart';


class SearchLocationWdget extends StatefulWidget {
  const SearchLocationWdget({super.key});

  @override
  State<SearchLocationWdget> createState() => _SearchLocationWdgetState();
}

class _SearchLocationWdgetState extends State<SearchLocationWdget> {
    bool showSearch = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: height(context, 0.17),
                            horizontal: width(context, 0.04)),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                showSearch = !showSearch;
                              });
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color:
                                          const  Color.fromARGB(200, 0, 0, 0),
                                      borderRadius: BorderRadius.circular(500)),
                                  child:  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    child: Icon(
                                      CupertinoIcons.search,
                                      color: showSearch
                                    ? AppColors.orangeColor:AppColors.whiteColor,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                const MediumPadding(
                                  horizental: true,
                                ),
                                showSearch
                                    ? const SearchLocatonWidget()
                                    : const SizedBox(),
                              ],
                            ),
                          ),
                        ),
                      );
  }
}