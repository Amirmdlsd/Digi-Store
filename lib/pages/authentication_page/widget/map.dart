import 'package:digi_store/pages/authentication_page/controller/register_controller.dart';
import 'package:digi_store/pages/authentication_page/pages/send_code_screen.dart';
import 'package:digi_store/widget/digi_loading_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';

class MapScreen extends StatelessWidget {
  final locationController = Get.put(RegisterController());
  static const String mapScreen = "/MAP_SCREEN";

  MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Obx(() => (locationController.latitude.value == 0 &&
                    locationController.longitude.value == 0)
                ? const Center(
                    child: DigiLoadingWidget(),
                  )
                : OSMFlutter(
                    mapIsLoading: const DigiLoadingWidget(),
                    controller: locationController.mapController,
                    osmOption: OSMOption(
                        zoomOption: const ZoomOption(
                          initZoom: 15,
                          minZoomLevel: 9,
                          maxZoomLevel: 19,
                          stepZoom: 1.0,
                        ),
                        markerOption: MarkerOption(
                            advancedPickerMarker: MarkerIcon(
                          icon: Icon(
                            Icons.location_on,
                            color: Colors.red,
                            size: 70.w,
                          ),
                        )),
                        isPicker: true))),
            Positioned(
              top: 10,
              right: 15,
              child: Container(
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      offset: const Offset(2, 2),
                      blurRadius: 2,
                      spreadRadius: 3)
                ], color: Colors.white, shape: BoxShape.circle),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                  onPressed: () {
                    Get.back();
                  },
                ),
              ),
            ),
            Positioned(
              right: 20.w,
              bottom: 20.h,
              child: SizedBox(
                width: 250.w,
                child: DigiButton(
                    lable: "انتخاب",
                    onTap: () {
                      locationController.pickUserLocation();
                    }),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          locationController.gotToUserLocation();
        },
        child: const Icon(Icons.location_on_outlined, color: Colors.white),
      ),
    );
  }
}
