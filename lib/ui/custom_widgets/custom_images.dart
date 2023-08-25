
import 'package:flutter/material.dart';
import 'package:medcloud/helper/import_helper.dart';

class CustomAssetImage extends StatelessWidget {
  final double? height;
  final double? width;
  final String imagePath;
  final bool isScaleDown;
  const CustomAssetImage(
      {Key? key,
      this.height,
      this.width,
      required this.imagePath,
      this.isScaleDown = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Image.asset(
        imagePath,
        fit: isScaleDown ? BoxFit.scaleDown : BoxFit.contain,
      ),
    );
  }
}

class CustomNetworkImage extends StatelessWidget {
  final double? height;
  final double? width;
  final String imagePath;
  const CustomNetworkImage({
    Key? key,
    this.height,
    this.width,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: FadeInImage.assetNetwork(
        image: imagePath,
        fit: BoxFit.fill,
        placeholder: Constants.loaderImage,
        placeholderFit: BoxFit.scaleDown,
        imageErrorBuilder: (BuildContext context, x, u) => Container(
            color: AppColors.whiteColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                Constants.logoImage,
                fit: BoxFit.fill,
              ),
            )),
      ),
    );
  }
}

// class CustomNetworkMemoryImage extends StatelessWidget {
//   final double? height;
//   final double? width;
//   final String imagePath;
//   const CustomNetworkMemoryImage({
//     Key? key,
//     this.height,
//     this.width,
//     required this.imagePath,
//   }) : super(key: key);

//   Uint8List convertBase64Image(String base64String) {
//     return const Base64Decoder().convert(base64String);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: height,
//       width: width,
//       child: Image.memory(
//         convertBase64Image(imagePath),
//         gaplessPlayback: true,
//         fit: BoxFit.fill,
//         errorBuilder: (BuildContext context, x, u) => Container(
//             color:Constants.selectedClient == Client.alAhli
//               ? AppColors.primaryColor
//               : AppColors.wihteColor,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Image.asset(
//                 Constants.logoImage,
//                 fit: BoxFit.fill,
//               ),
//             )),
//       ),
//     );
//   }
// }
// class CustomNetworkMemoryImageConverted extends StatelessWidget {
//   final double? height;
//   final double? width;
//   final Uint8List  imagePath;
//   const CustomNetworkMemoryImageConverted({
//     Key? key,
//     this.height,
//     this.width,
//     required this.imagePath,
//   }) : super(key: key);



//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: height,
//       width: width,
//       child: Image.memory(
//      imagePath,
//         gaplessPlayback: true,
//         fit: BoxFit.fill,
//         errorBuilder: (BuildContext context, x, u) => Container(
//             color: AppColors.primaryColor,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Image.asset(
//                 Constants.logoImage,
//                 fit: BoxFit.fill,
//               ),
//             )),
//       ),
//     );
//   }
// }
