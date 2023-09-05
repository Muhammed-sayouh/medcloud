import 'package:flutter/material.dart';

import '../theme/sizes/sizes.dart';

// void loadingDialog(BuildContext context) {
//   showDialog(
//       barrierDismissible: false,
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//           content: SizedBox(
//             height: height(context, 0.08),
//             child: Row(
//               children: [
//                 const CustomLoader(),
//                 SizedBox(
//                   width: width(context, 0.05),
//                 ),
//                 Text(Constants.loading)
//               ],
//             ),
//           ),
//         );
//       });
// }

void customDialog(BuildContext context,
    {required String title, List<Widget>? actions}) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          content: SizedBox(
              height: height(context, 0.12), child: Center(child: Text(title))),
          actions: actions,
        );
      });
}

void customDialogWidget(BuildContext context, {required Widget widget}) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          content: SizedBox(height: height(context, 0.45), child: widget),
        );
      });
}
