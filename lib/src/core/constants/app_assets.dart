import 'package:flutter_svg/flutter_svg.dart';

///* Imagery Styles
class AppAssets {
  /* 
  * ============= Logos ==============
   */
  static const appLogoPrimaryPng = 'assets/logo/logo-primary.png';
  static const appLogoPrimary = 'assets/logo/logo-primary.svg';
  static const appLogoBlack = 'assets/logo/logo-black.svg';
  static const appLogoYellow = 'assets/logo/logo-yellow.svg';

  /* 
  * ============= Images ==============
   */

  // *Onboarding Screens
  static const lookingImage = 'assets/images/looking.svg';
  static const mailboxImage = 'assets/images/mailbox.svg';
  static const productsImage = 'assets/images/products.svg';

  /* 
  * ========== Logos em forma de Icon =========
   */
  static const appLogoBlackSmall = 'assets/logo/icon-black.svg';
  static const appLogoWhiteSmall = 'assets/logo/icon-white.svg';
  static const appLogoYellowSmall = 'assets/logo/icon-yellow.svg';

  /* 
  * ==== Empty State Images ====
   */
  static const wishlistEmpty =
      'assets/images/wishlist_screen/products-empty.svg';

  static const profileEmpty = 'assets/images/profile_screen/profile-empty.svg';

  /* 
  * ==== Paralax Background Images ====
   */
  static const paralaxImage1 =
      'assets/images/intro_screen/image-1.png';
  static const paralaxImage2 =
      'assets/images/intro_screen/image-2.png';
  static const paralaxImage3 =
      'assets/images/intro_screen/image-3.png';
  static const paralaxImage4 =
      'assets/images/intro_screen/image-4.png';
  static const paralaxImage5 =
      'assets/images/intro_screen/image-5.png';
  static const paralaxImage6 =
      'assets/images/intro_screen/image-6.png';
      static const paralaxImage7 = 'assets/images/intro_screen/image-7.png';
  static const paralaxImage8 = 'assets/images/intro_screen/image-8.png';
  static const paralaxImage9 = 'assets/images/intro_screen/image-9.png';
  static const paralaxImage10 = 'assets/images/intro_screen/image-10.png';
  static const paralaxImage11 = 'assets/images/intro_screen/image-11.png';

  static Future<void> preloadSVGs() async {
    final assets = [
      //* Logos
      appLogoPrimaryPng,
      appLogoPrimary,
      appLogoBlack,
      appLogoYellow,
      //* Empty state
      wishlistEmpty,
      profileEmpty,
      // * Paralax
      // paralaxImage1,
      // paralaxImage2,
      // paralaxImage3,
      // paralaxImage4,
      // paralaxImage5,
      // paralaxImage6,
// * Others
      lookingImage,
      mailboxImage,
      productsImage,
      appLogoBlackSmall,
      appLogoWhiteSmall,
      appLogoYellowSmall,
    ];
    for (final asset in assets) {
      final loader = SvgAssetLoader(asset);
      await svg.cache.putIfAbsent(
        loader.cacheKey(null),
        () => loader.loadBytes(null),
      );
    }
  }
}
