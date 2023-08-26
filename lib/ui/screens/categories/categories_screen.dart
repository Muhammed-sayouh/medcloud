import 'dart:developer';

import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/top_search_bar_wdget.dart';
import 'package:medcloud/ui/screens/categories/screens/clinics_screen.dart';
import 'package:medcloud/ui/screens/categories/screens/doctors_screen.dart';
import 'package:medcloud/ui/screens/categories/screens/general_screen.dart';
import 'package:medcloud/ui/screens/categories/widgets/show_filter_buttom_sheet.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: CustomScreen(
        hideBack: true,
        hideClose: true,
        removebottomPaddng: true,
        extraWidget: TopSearchBarWdget(
          onTap: () => showFilterButtomSheet(context),
          changeDefultIcon: Icons.filter_alt,
            hideIcon: _tabController.index == 2 ? false : true),
        child: Expanded(
          child: Column(
            children: [
              SizedBox(
                width: width(context, 1),
                child: TabBar(
                  onTap: (value) => setState(() {}),
                  controller: _tabController,
                  labelColor: AppColors.orangeColor,
                  indicatorColor: AppColors.orangeColor,
                  indicatorWeight: 3,
                  labelStyle: getMediumStyle(
                      color: AppColors.orangeColor, fontSize: 15),
                  overlayColor:
                      MaterialStateProperty.all(AppColors.orangeColor),
                  unselectedLabelColor: AppColors.mediumGrayColor,
                  tabs: <Widget>[
                    Tab(
                      text: Constants.clinics,
                    ),
                    Tab(
                      text: Constants.doctors,
                    ),
                    Tab(
                      text: Constants.genral,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const <Widget>[
                    ClinicsScreen(),
                    DoctorsScreen(),
                    GeneralScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
