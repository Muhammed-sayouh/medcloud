import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/screens/categories/widgets/filterd_by_expanded_widget.dart';
import 'package:medcloud/ui/screens/categories/widgets/slider_widget.dart';

class FilteredByWidgets extends StatefulWidget {
  const FilteredByWidgets({super.key});

  @override
  State<FilteredByWidgets> createState() => _FilteredByWidgetsState();
}

class _FilteredByWidgetsState extends State<FilteredByWidgets> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height(context, 0.4),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BigPadding(),
            ExpandedFilterdWidget(
              title: Constants.price,
              widget: const SliderWidget(),
            ),
            ExpandedFilterdWidget(
              title: Constants.brand,
              widget: const BrandWdiget(),
            ),
            ExpandedFilterdWidget(
              title: Constants.countryOfOrigin,
              widget: const CountryOFOriginWidget(),
              hideDivider: true,
            ),
            
          ],
        ),
      ),
    );
  }
}

class BrandWdiget extends StatelessWidget {
  const BrandWdiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: ListView.builder(
        itemCount: 10,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => Text(
          "Brand $index",
          style: getRegularStyle(fontSize: 14),
        ),
      ),
    );
  }
}

class CountryOFOriginWidget extends StatelessWidget {
  const CountryOFOriginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: ListView.builder(
        itemCount: 3,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => Text(
          "Country $index",
          style: getRegularStyle(fontSize: 14),
        ),
      ),
    );
  }
}
