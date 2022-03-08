import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// //////////////////////////////////////////////////////////////
/// Styles - Contains the design system for the entire app.
/// Includes paddings, text styles, timings etc. Does not include colors, check [AppTheme] file for that.

/// Used for all animations in the  app
class Times {
  static const Duration fastest = const Duration(milliseconds: 150);
  static const fast = const Duration(milliseconds: 250);
  static const medium = const Duration(milliseconds: 350);
  static const slow = const Duration(milliseconds: 700);
  static const slower = const Duration(milliseconds: 1000);
}

class Sizes {
  static double hitScale = 1;
  static double get hit => 40 * hitScale;
  static const double smallPhone = 500;
  static const double largePhone = 700;
}

class IconSizes {
  static const double scale = 1;
  static const double med = 24;
}

class Insets {
  static double scale = 1;
  static double offsetScale = 1;
  // Regular paddings
  static double get xs => 4 * scale;
  static double get sm => 8 * scale;
  static double get med => 12 * scale;
  static double get lg => 16 * scale;
  static double get xl => 32 * scale;
  // Offset, used for the edge of the window, or to separate large sections in the app
  static double get offset => 40 * offsetScale;
}

class Corners {
  static const double sm = 3;
  static const BorderRadius smBorder = const BorderRadius.all(smRadius);
  static const Radius smRadius = const Radius.circular(sm);

  static const double med = 5;
  static const BorderRadius medBorder = const BorderRadius.all(medRadius);
  static const Radius medRadius = const Radius.circular(med);

  static const double lg = 8;
  static const BorderRadius lgBorder = const BorderRadius.all(lgRadius);
  static const Radius lgRadius = const Radius.circular(lg);
}

class Strokes {
  static const double thin = 1;
  static const double thick = 4;
}

class Shadows {
  static List<BoxShadow> get universal => [
        BoxShadow(
            color: Color(0xff000000).withOpacity(.11),
            spreadRadius: 0,
            blurRadius: 7,
            offset: Offset(1, 2)),
      ];
  static List<BoxShadow> get small => [
        BoxShadow(
            color: Color(0xff333333).withOpacity(.15),
            spreadRadius: 0,
            blurRadius: 3,
            offset: Offset(0, 1)),
      ];
}

/// Font Sizes
/// You can use these directly if you need, but usually there should be a predefined style in TextStyles.
class FontSizes {
  /// Provides the ability to nudge the app-wide font scale in either direction
  static double get scale => 1;
  static double get s10 => 10 * scale;
  static double get s11 => 11 * scale;
  static double get s12 => 12 * scale;
  static double get s14 => 14 * scale;
  static double get s15 => 15 * scale;
  static double get s16 => 16 * scale;
  static double get s18 => 18 * scale;
  static double get s19 => 19 * scale;
  static double get s20 => 20 * scale;
  static double get s21 => 21 * scale;
  static double get s24 => 24 * scale;
  static double get s23 => 23 * scale;
  static double get s35 => 35 * scale;
  static double get s40 => 40 * scale;
  static double get s45 => 45 * scale;
  static double get s48 => 48 * scale;
}

/// Fonts - A list of Font Families, this is uses by the TextStyles class to create concrete styles.
class Fonts {
  static const String Hiragino = "Hiragino Kaku Gothic Pro";
}

/// TextStyles - All the core text styles for the app should be declared here.
/// Don't try and create every variant in existence here, just the high level ones.
/// More specific variants can be created on the fly using `style.copyWith()`
/// `newStyle = TextStyles.body1.copyWith(lineHeight: 2, color: Colors.red)`
class TextStyles {
  /// Declare a base style for each Family
  //Auth
  static TextStyle regularStyle =
      TextStyle(fontFamily: Fonts.Hiragino).copyWith(fontSize: FontSizes.s16);
  static TextStyle normalStyle =
      TextStyle(fontFamily: Fonts.Hiragino).copyWith(fontSize: FontSizes.s14);
  static TextStyle mediumStyle = TextStyle(fontFamily: Fonts.Hiragino)
      .copyWith(fontSize: FontSizes.s14, fontWeight: FontWeight.w500);
  static TextStyle medium12Style = TextStyle(fontFamily: Fonts.Hiragino)
      .copyWith(fontSize: FontSizes.s12, fontWeight: FontWeight.w500);
  static TextStyle normalBold = TextStyle(fontFamily: Fonts.Hiragino)
      .copyWith(fontSize: FontSizes.s14, fontWeight: FontWeight.bold);
  static TextStyle boldStyle =
      TextStyle(fontFamily: Fonts.Hiragino).copyWith(fontSize: FontSizes.s14);
  static TextStyle normalButton = TextStyle(fontFamily: Fonts.Hiragino)
      .copyWith(fontSize: FontSizes.s19, fontWeight: FontWeight.w400);
  static TextStyle normal = normalButton.copyWith(fontSize: FontSizes.s15);
  static TextStyle normalUnderline =
      normal.copyWith(decoration: TextDecoration.underline);
  static TextStyle boldButton =
      normalStyle.copyWith(fontWeight: FontWeight.bold);
  static TextStyle title = normalBold.copyWith(fontSize: FontSizes.s20);
  static TextStyle h1 = title.copyWith(fontSize: FontSizes.s45);
  static TextStyle h2 = h1.copyWith(fontSize: FontSizes.s40);
  static TextStyle h3 = h1.copyWith(fontSize: FontSizes.s23);
  static TextStyle h4 = h1.copyWith(fontSize: FontSizes.s20);
  static TextStyle h5 = h1.copyWith(fontSize: FontSizes.s19);
  static TextStyle caption = normalStyle.copyWith(fontSize: FontSizes.s15);
  static TextStyle body2 = normalStyle.copyWith(fontSize: FontSizes.s15);
  static TextStyle callout1 = normalStyle.copyWith(fontSize: FontSizes.s15);
  static TextStyle callout2 = callout1.copyWith(fontSize: FontSizes.s11);
  static TextStyle barTitle = mediumStyle.copyWith(fontSize: FontSizes.s12);

  static TextStyle primaryButton = normalStyle.copyWith(
    fontSize: FontSizes.s18,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    color: Colors.white,
  );
}
