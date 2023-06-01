class AppAssets {
  AppAssets._();

  static const String _baseImage = "assets/pngs/";
  static const String _baseSvg = "assets/svgs/";

  static String _getImagePath(String pathName) {
    pathName = "$pathName.png";
    return _baseImage + pathName;
  }

  static String _getSvgPath(String pathName) {
    pathName = "$pathName.svg";
    return _baseSvg + pathName;
  }

  /// PNGs
  static String stitchLogo = _getImagePath('stitch_logo');

  /// SVGs
  static String intrapairBackGround = _getSvgPath('intrapair_background');
}
