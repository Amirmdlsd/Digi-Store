import 'package:digi_store/utils/file_picker/file_picker.dart';
import 'package:digi_store/widget/digi_loading_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:location/location.dart';

class RegisterController extends GetxController {
  final nameController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();

  final imageHandler = ImageHandler();
  RxBool imageSelected = false.obs;
  late MapController mapController;
  var location = Location();

  PermissionStatus? _permissionGranted;
  LocationData? _locationData;

  RxBool isLoadingForLocation = false.obs;
  RxDouble latitude = 0.0.obs;
  RxDouble longitude = 0.0.obs;

  RxBool mapIsLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    mapController = MapController(
        initPosition:
            GeoPoint(latitude: latitude.value, longitude: longitude.value));
    getCurrentLocation();
  }

  Future<void> getCurrentLocation() async {
    bool serviceEnable = await location.serviceEnabled();
    if (!serviceEnable) {
      serviceEnable = await location.requestService();
      if (!serviceEnable) {
        isLoadingForLocation.value = false;
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    if (_permissionGranted == PermissionStatus.granted) {
      _locationData = await location.getLocation();

      latitude.value = _locationData?.latitude ?? 0;
      longitude.value = _locationData?.longitude ?? 0;
      GeoPoint userLocation =
          GeoPoint(latitude: latitude.value, longitude: longitude.value);

      await initOsm();
      mapController.init();

      Future.delayed(const Duration(seconds: 1), () async {
        await mapController.addMarker(userLocation,
            markerIcon: const MarkerIcon(
              iconWidget: Icon(
                Icons.circle,
                color: Colors.lightBlue,
                size: 30,
              ),
            ));
      });
    }
  }

  Future<void> initOsm() async {
    GeoPoint userLocation =
        GeoPoint(latitude: latitude.value, longitude: longitude.value);
    mapController = MapController(initPosition: userLocation);
  }

  Future<void> gotToUserLocation() async {
    await mapController.removeMarker(
        GeoPoint(latitude: latitude.value, longitude: longitude.value));
    EasyLoading.show(
      maskType: EasyLoadingMaskType.custom,
      indicator: const DigiLoadingWidget(color: Colors.red),
    );

    _locationData = await location.getLocation();
    latitude.value = _locationData?.latitude ?? 0;
    longitude.value = _locationData?.longitude ?? 0;
    GeoPoint userLocation =
        GeoPoint(latitude: latitude.value, longitude: longitude.value);

    Future.delayed(const Duration(seconds: 1), () async {
      await mapController.addMarker(userLocation,
          markerIcon: const MarkerIcon(
            iconWidget: Icon(
              Icons.circle,
              color: Colors.lightBlue,
              size: 30,
            ),
          ));
    });
    await mapController.goToLocation(userLocation);
    EasyLoading.dismiss();
  }

  Future<void> changeUserImage(ImageSource imageSource) async {
    await imageHandler.pickUserImage(imageSource: imageSource);
    if (imageHandler.getFile != null) {
      imageSelected.value = true;
    } else {
      imageSelected.value = false;
    }
  }

  @override
  void dispose() {
    super.dispose();

    mapController.dispose();
  }
}
