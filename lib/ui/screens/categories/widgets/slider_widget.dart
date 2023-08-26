import 'package:medcloud/helper/import_helper.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _value = 20;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        showValueIndicator: ShowValueIndicator.always,
        trackHeight: 3.0,
        trackShape: const RoundedRectSliderTrackShape(),
        activeTrackColor: AppColors.orangeColor,
        inactiveTrackColor: AppColors.mediumGrayColor,
        thumbColor: AppColors.orangeColor,
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 15.0),
        tickMarkShape: const RoundSliderTickMarkShape(),
        activeTickMarkColor: AppColors.orangeColor,
        inactiveTickMarkColor: Colors.white,
        valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
        valueIndicatorColor: AppColors.orangeColor,
        valueIndicatorTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
      child: Slider(
        min: 0.0,
        max: 100.0,
        value: _value,
        label: '${_value.round()}',
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
      ),
    );
  }
}
