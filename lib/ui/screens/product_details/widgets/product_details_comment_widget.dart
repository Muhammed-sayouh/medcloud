import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:medcloud/helper/import_helper.dart';

class CommentWidgetProductDetailsWidget extends StatelessWidget {
  const CommentWidgetProductDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: width(context, 0.2),
                height: width(context, 0.2),
                child: Image.asset(
                  Constants.personImage,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Customer Name", style: getMediumStyle()),
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemSize: 14,
                    itemCount: 5,
                    itemPadding:
                        EdgeInsets.symmetric(horizontal: 2.0, vertical: 3),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  SmallPadding(),
                  SizedBox(
                    width: width(context, 0.63),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr",
                        style: getMediumStyle(fontSize: 11)),
                  )
                ],
              )
            ],
          )
        ]),
        BigPadding(),
        Center(
          child: Text(
            Constants.showMore,
            style: getMediumStyle(fontSize: 13, color: AppColors.orangeColor)
                .copyWith(decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
