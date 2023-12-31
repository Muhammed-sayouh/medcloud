import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:location/location.dart' as location_plugin;
import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/custom_widgets/custom_button.dart';
import 'package:medcloud/ui/screens/map/widgets/my_location_widget.dart';
import 'package:medcloud/ui/screens/map/widgets/search_location.dart';
import 'package:medcloud/ui/screens/map/widgets/show_address_buttom_sheet.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  double? currentLat;
  double? currentLong;

  String? currentAddress;

  bool _loader = true;

  bool? _serviceEnabled;
  location_plugin.PermissionStatus? _permissionGranted;
  location_plugin.LocationData? _locationData;

  var location = location_plugin.Location();

  Marker marker = const Marker(
    markerId: MarkerId("1"),
  );
  Future _getCurrentLocation() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled!) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled!) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == location_plugin.PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != location_plugin.PermissionStatus.granted) {
        return;
      }
    }
    _locationData = await location.getLocation();

    List<Placemark> coordinates = await placemarkFromCoordinates(
        _locationData!.latitude!.toDouble(),
        _locationData!.longitude!.toDouble());

    String? addresses =
        '${coordinates[0].country!} - ${coordinates[0].administrativeArea!} - ${coordinates[0].locality!} - ${coordinates[0].street!}';

    setState(() {
      currentLat = _locationData!.latitude;
      currentLong = _locationData!.longitude;
      currentAddress = addresses;
    });
    setState(() {
      _loader = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Position? updatedPosition;
  String address = "";
  getLocationAddress() async {
    List<Placemark> coordinates =
        await placemarkFromCoordinates(currentLat!, currentLong!);
    String? addresses =
        '${coordinates[0].locality!} - ${coordinates[0].administrativeArea!} - ${coordinates[0].thoroughfare!}';
    currentAddress = addresses;
  }

  Future<void> moveCamera() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: LatLng(currentLat!, currentLong!),
      zoom: 12.0,
    )));
  }

  bool moveCameraLoader = false;
  void moveCameraToMyLocation() async {
    setState(() {
      moveCameraLoader = true;
    });
    final GoogleMapController controller = await _controller.future;
    location_plugin.LocationData currentLocation;
    location_plugin.Location location = location_plugin.Location();

    currentLocation = await location.getLocation();

    setState(() {
      currentLat = currentLocation.latitude;
      currentLong = currentLocation.longitude;
      moveCameraLoader = false;
    });
    controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
        bearing: 0,
        target: LatLng(currentLocation.latitude!.toDouble(),
            currentLocation.longitude!.toDouble()),
        zoom: 15.0,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentLat == null || currentLong == null || _loader == true
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      GoogleMap(
                          zoomControlsEnabled: false,
                          // myLocationEnabled: true,
                          mapType: MapType.terrain,
                          onCameraIdle: () {},
                          initialCameraPosition: CameraPosition(
                            target: LatLng(currentLat!, currentLong!),
                            zoom: 12.0,
                          ),
                          onMapCreated: (GoogleMapController controller) {
                            _controller.complete(controller);
                          },
                          onTap: (location) async {
                            currentLat = location.latitude;
                            currentLong = location.longitude;
                            getLocationAddress();
                            setState(() {});
                          },
                          onCameraMove: (loc) {
                            _updatePosition(loc);
                          },
                          markers: <Marker>{
                            Marker(
                              draggable: true,
                              markerId: const MarkerId("1"),
                              position: LatLng(currentLat!, currentLong!),
                              icon: BitmapDescriptor.defaultMarker,
                            )
                          }),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: CustomButton(
                            title: Constants.confirmLocation,
                            onPressed: () {
                              showAddressButtomSheet(context , currentAddress!);
                            },
                          ),
                        ),
                      ),
                      const SearchLocationWdget(),
                      MyLocationWidget(
                        moveCameraLoader: moveCameraLoader,
                        onTap: moveCameraToMyLocation,
                      ),
                      SizedBox(
                        width: width(context, 1),
                        height: height(context, 0.18),
                        child: Image.asset(
                          Constants.headerImage,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: width(context, 0.04),
                          right: width(context, 0.04),
                          top: height(context, 0.07),
                          bottom: 0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                                onTap: () => Navigators.back(context),
                                child: const Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: AppColors.whiteColor,
                                )),
                            Text(
                              Constants.addAddress,
                              style: getMediumStyle(
                                  color: AppColors.whiteColor, fontSize: 20),
                            ),
                            const SizedBox()
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }

  _updatePosition(CameraPosition _position) async {
    Position newMarkerPosition = Position(
        latitude: _position.target.latitude,
        longitude: _position.target.longitude,
        accuracy: 0,
        altitude: 0,
        heading: 0,
        speed: 0,
        speedAccuracy: 0,
        timestamp: DateTime.now());
    setState(() {
      updatedPosition = newMarkerPosition;
      marker = marker.copyWith(
          positionParam:
              LatLng(newMarkerPosition.latitude, newMarkerPosition.longitude));
    });
  }
}
