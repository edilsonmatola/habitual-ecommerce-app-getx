import 'package:flutter_svg/flutter_svg.dart';

///* App Icons
// ignore_for_file: avoid_classes_with_only_static_members

class AppIcons {
  /* 
  * =========== NavBar Icons ============
   */
  static const favoriteIcon = 'assets/icons/navigation-bar/heart.svg';
  static const homeIcon = 'assets/icons/navigation-bar/home.svg';
  static const searchIcon = 'assets/icons/navigation-bar/search.svg';
  static const profileIcon = 'assets/icons/navigation-bar/user.svg';

  /* 
  * ========= Social Media Icons =========
   */
  static const facebookIcon = 'assets/icons/social-media-bar/facebook.svg';
  static const linkedInIcon = 'assets/icons/social-media-bar/github.svg';
  static const instagramIcon = 'assets/icons/social-media-bar/instagram.svg';
  static const emailIcon = 'assets/icons/social-media-bar/linkedin.svg';
  static const twitterIcon = 'assets/icons/social-media-bar/mail.svg';
  static const youtubeIcon = 'assets/icons/social-media-bar/twitter.svg';
  static const githubIcon = 'assets/icons/social-media-bar/youtube.svg';

  /* 
  * =============== Icons =======================
   */
  static const closeIcon = 'assets/icons/x.svg';
  static const leftArrowIcon = 'assets/icons/arrow-left.svg';
  static const circleRightArrowIcon =
      'assets/icons/others/arrow-right-circle.svg';
  static const circleLeftArrowIcon =
      'assets/icons/others/arrow-left-circle.svg';
  static const iOSLeftArrowIcon = 'assets/icons/others/chevron-left.svg';
  static const iOSRightArrowIcon = 'assets/icons/others/chevron-right.svg';
  static const eyeOffIcon = 'assets/icons/others/eye-off.svg';
  static const eyeIcon = 'assets/icons/others/eye.svg';
  static const lockIcon = 'assets/icons/others/lock.svg';
  static const loginIcon = 'assets/icons/others/log-in.svg';
  static const logoutIcon = 'assets/icons/others/log-out.svg';
  static const shoppingBagIcon = 'assets/icons/others/shopping-bag.svg';
  static const shoppingCartIcon = 'assets/icons/others/shopping-cart.svg';
  static const filterIcon = 'assets/icons/others/sliders.svg';
  static const deleteEmptyIcon = 'assets/icons/others/trash.svg';
  static const deleteFullIcon = 'assets/icons/others/trash-2.svg';
  static const lockOpenIcon = 'assets/icons/others/unlock.svg';

  static Future<void> preloadSVGs() async {
    final assets = [
      //* Navbar
      favoriteIcon,
      homeIcon,
      searchIcon,
      profileIcon,
      // * Social Media
      facebookIcon,
      linkedInIcon,
      instagramIcon,
      emailIcon,
      twitterIcon,
      youtubeIcon,
      githubIcon,
// * Others
      closeIcon,
      leftArrowIcon,
      circleRightArrowIcon,
      circleLeftArrowIcon,
      iOSLeftArrowIcon,
      iOSRightArrowIcon,
      eyeOffIcon,
      eyeIcon,
      lockIcon,
      loginIcon,
      logoutIcon,
      shoppingBagIcon,
      filterIcon,
      deleteEmptyIcon,
      deleteFullIcon,
      lockOpenIcon,
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
