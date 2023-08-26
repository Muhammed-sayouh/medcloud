import 'package:medcloud/helper/import_helper.dart';

class CommonCircleWidget extends StatelessWidget {
  final String title;
  final String image;
  const CommonCircleWidget({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(500),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(500),
          child: CustomNetworkImage(
            height: height(context, 0.1),
            width: height(context, 0.1),
            imagePath: image,
            
          ),
        ),
      ),
      SizedBox(
          width: width(context, 0.25),
          child: Text(
            title,
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: getRegularStyle(fontSize: 12).copyWith(height: 1.7),
          ))
    ]);
  }
}
