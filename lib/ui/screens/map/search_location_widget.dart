import 'package:google_places_flutter/google_places_flutter.dart';
import 'package:medcloud/helper/import_helper.dart';

class SearchLocatonWidget extends StatefulWidget {
  const SearchLocatonWidget({super.key});

  @override
  State<SearchLocatonWidget> createState() => _SearchLocatonWidgetState();
}

class _SearchLocatonWidgetState extends State<SearchLocatonWidget> {
    TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: height(context, 0.055),
      
        child: GooglePlaceAutoCompleteTextField(
          textEditingController: controller,
          boxDecoration: BoxDecoration(color: AppColors.whiteColor,borderRadius: BorderRadius.circular(8)),
          googleAPIKey: "AIzaSyCrsTVja4leOLfOxV6EfP1oSyQv_bpj7yg",
          inputDecoration:   InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
            fillColor: AppColors.whiteColor,
            hintText: "Search your location",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide .none),
            enabledBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide .none),
            disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide .none),
            focusedBorder:  OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide .none),
            errorBorder: InputBorder.none,
      
          ),
          debounceTime: 400,
          countries: const ["ar", "en"],
          isLatLngRequired: false,
          getPlaceDetailWithLatLng: (prediction) {
            print("placeDetails${prediction.lat}");
          },
      
          itemClick: (prediction) {
            controller.text = prediction.description ?? "";
            controller.selection = TextSelection.fromPosition(
                TextPosition(offset: prediction.description?.length ?? 0));
          },
          seperatedBuilder: const Divider(),
          itemBuilder: (context, index, prediction) {
            return Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Icon(Icons.location_on),
                  const SizedBox(
                    width: 7,
                  ),
                  Expanded(child: Text(prediction.description ?? ""))
                ],
              ),
            );
          },
      
          isCrossBtnShown: false,
      
          // default 600 ms ,
        ),
      ),
    );
  }
}