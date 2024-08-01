import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ImageHandler {
  File? _file;

  Future pickUserImage({required ImageSource imageSource}) async {
    try {
      PermissionStatus permission = await Permission.storage.request();
      if (permission == PermissionStatus.granted) {
        XFile? picker = await ImagePicker().pickImage(source: imageSource);

        if (picker == null) return;

        File croppedImage = await cropImage(file: picker);

        _file = File(croppedImage.path);
      } else if (permission == PermissionStatus.denied) {
        return;
      } else if (permission == PermissionStatus.permanentlyDenied) {
        openAppSettings();
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future cropImage({required XFile file}) async {
    CroppedFile? imageCropper = await ImageCropper().cropImage(
        aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
        sourcePath: file.path,
        maxHeight: 150,
        maxWidth: 150,
        uiSettings: [
          AndroidUiSettings(
            cropStyle: CropStyle.circle,
          )
        ]);
    if (imageCropper == null) return;
    return File(imageCropper.path);
  }

  File? get getFile => _file;
}
