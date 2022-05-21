import '../themes/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PathIcons {
  // Email
  static final FaIcon emailIcon = FaIcon(
    FontAwesomeIcons.envelope,
    color: AppColors.bgBlack,
  );

  // password
  static final FaIcon passIcon = FaIcon(
    FontAwesomeIcons.userLock,
    color: AppColors.bgBlack,
  );

  static final FaIcon eyeIcon = FaIcon(
    FontAwesomeIcons.eye,
    color: AppColors.mainColor,
  );

  static final FaIcon eyeSlashIcon = FaIcon(
    FontAwesomeIcons.eyeSlash,
    color: AppColors.mainColor,
  );

  static const String language = 'assets/icons/language.svg';
  static const String theme = 'assets/icons/paint.svg';
  static const String psutIcon = 'assets/icons/psutLogo.svg';
  static const String psutIconGreen = 'assets/icons/psutLogoG.svg';
  static const String avatar = 'assets/icons/avatar-svgrepo-com.svg';
  static const String groupPeople = 'assets/icons/group-svgrepo-com.svg';
  static const String settings = 'assets/icons/Icon feather-settings.svg';
  static const String card = 'assets/icons/Icon feather-credit-card.svg';
  static const String csoProfile =
      'assets/icons/Icon material-person-outline.svg';
  static const String bookmark = 'assets/icons/Icon feather-bookmark.svg';
  static const String tutor =
      'assets/icons/Icon awesome-chalkboard-teacher.svg';
  static const String logout = 'assets/icons/Icon open-account-logout.svg';
}
