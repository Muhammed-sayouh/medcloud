import 'package:flutter/material.dart';
import 'package:medcloud/ui/custom_widgets/common_circle_widget.dart';

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
padding: EdgeInsets.symmetric(vertical: 15),
      itemCount: 15,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: 1 / 1),
      itemBuilder: (context, index) => CommonCircleWidget(
          title: "Doctor Name",
          image:
              "https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg",
        ),
    );
  }
}
