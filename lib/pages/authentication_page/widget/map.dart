import 'package:digi_store/pages/authentication_page/controller/register_controller.dart';
import 'package:digi_store/widget/digi_loading_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                    mapIsLoading: const Center(
                      child: DigiLoadingWidget(),
                    ),
                    controller: locationController.mapController,
                    osmOption: const OSMOption(
                      isPicker: true,
                        zoomOption: ZoomOption(
                            minZoomLevel: 8, maxZoomLevel: 18, initZoom: 16)))),
            Positioned(
              top: 10,
              right: 15,
              child: Container(
                width: 40.w,
                height: 40.h,
                decoration:  BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.grey.withOpacity(1),
                    offset: const Offset(2, 2),
                      blurRadius: 2,spreadRadius: 3
                    )
                  ],
                    color: Colors.white, shape: BoxShape.circle),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                  ),
                  onPressed: () {
                    Get.back();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          locationController.gotToUserLocation();
        },
        child: const Icon(Icons.location_on_outlined),
      ),
    );
  }
}
