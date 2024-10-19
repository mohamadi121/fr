part of constants;

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Rectangle 191.png
  AssetGenImage get rectangle191 =>
      const AssetGenImage('assets/images/Rectangle 191.png');

  /// File path: assets/images/aa.png
  AssetGenImage get aa => const AssetGenImage('assets/images/aa.png');

  /// File path: assets/images/ab.png
  AssetGenImage get ab => const AssetGenImage('assets/images/ab.png');

  /// File path: assets/images/appBarPoster.png
  AssetGenImage get appBarPosterPng =>
      const AssetGenImage('assets/images/appBarPoster.png');

  /// File path: assets/images/appBarPoster.svg
  String get appBarPosterSvg => 'assets/images/appBarPoster.svg';

  /// File path: assets/images/arrow-left.png
  AssetGenImage get arrowLeft =>
      const AssetGenImage('assets/images/arrow-left.png');

  /// File path: assets/images/brand.png
  AssetGenImage get brand => const AssetGenImage('assets/images/brand.png');

  /// File path: assets/images/map.png
  AssetGenImage get map => const AssetGenImage('assets/images/map.png');

  /// File path: assets/images/pic.png
  AssetGenImage get pic => const AssetGenImage('assets/images/pic.png');

  /// File path: assets/images/picture.png
  AssetGenImage get picture => const AssetGenImage('assets/images/picture.png');

  /// File path: assets/images/poster.svg
  String get poster => 'assets/images/poster.svg';

  /// File path: assets/images/posterPng.png
  AssetGenImage get posterPng =>
      const AssetGenImage('assets/images/posterPng.png');

  /// File path: assets/images/posterp.png
  AssetGenImage get posterp => const AssetGenImage('assets/images/posterp.png');

  /// File path: assets/images/splash.png
  AssetGenImage get splash => const AssetGenImage('assets/images/splash.png');

  /// File path: assets/images/tower.png
  AssetGenImage get tower => const AssetGenImage('assets/images/tower.png');

  /// List of all assets
  List<dynamic> get values => [
        rectangle191,
        aa,
        ab,
        appBarPosterPng,
        appBarPosterSvg,
        arrowLeft,
        brand,
        map,
        pic,
        picture,
        poster,
        posterPng,
        posterp,
        splash,
        tower
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
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
