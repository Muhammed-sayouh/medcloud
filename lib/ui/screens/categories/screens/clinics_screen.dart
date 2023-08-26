import 'package:flutter/material.dart';
import 'package:medcloud/ui/custom_widgets/common_circle_widget.dart';

class ClinicsScreen extends StatelessWidget {
  const ClinicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
padding: EdgeInsets.symmetric(vertical: 15),
      itemCount: 15,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: 1 / 1),
      itemBuilder: (context, index) => CommonCircleWidget(
        title: "Clinic Name",
        image:
            "https://images-platform.99static.com//ARAjmFT5jMCG8c3Q5ovA3dMbrwI=/250x0:1248x998/fit-in/500x500/99designs-contests-attachments/111/111971/attachment_111971554",
      ),
    );
  }
}
