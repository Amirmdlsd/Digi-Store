/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsPngGen {
  const $AssetsPngGen();

  /// File path: assets/png/location_icon.png
  AssetGenImage get locationIcon =>
      const AssetGenImage('assets/png/location_icon.png');

  /// File path: assets/png/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/png/logo.png');

  /// File path: assets/png/map_image.png
  AssetGenImage get mapImage => const AssetGenImage('assets/png/map_image.png');

  /// List of all assets
  List<AssetGenImage> get values => [locationIcon, logo, mapImage];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/freshbasket.webp
  AssetGenImage get freshbasket =>
      const AssetGenImage('assets/svg/freshbasket.webp');

  /// File path: assets/svg/logo.svg
  String get logo => 'assets/svg/logo.svg';

  /// File path: assets/svg/profile-wallet.svg
  String get profileWallet => 'assets/svg/profile-wallet.svg';

  /// File path: assets/svg/status-delivered.svg
  String get statusDelivered => 'assets/svg/status-delivered.svg';

  /// File path: assets/svg/status-processing.svg
  String get statusProcessing => 'assets/svg/status-processing.svg';

  /// File path: assets/svg/status-returned.svg
  String get statusReturned => 'assets/svg/status-returned.svg';

  /// List of all assets
  List<dynamic> get values => [
        freshbasket,
        logo,
        profileWallet,
        statusDelivered,
        statusProcessing,
        statusReturned
      ];
}

class Assets {
  Assets._();

  static const $AssetsPngGen png = $AssetsPngGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
