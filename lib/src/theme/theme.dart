import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278204773),
      surfaceTint: Color(4281164183),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280769682),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4285226752),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294632530),
      onSecondaryContainer: Color(4283582464),
      tertiary: Color(4282802555),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4289053150),
      onTertiaryContainer: Color(4279579210),
      error: Color(4289475370),
      onError: Color(4294967295),
      errorContainer: Color(4294935414),
      onErrorContainer: Color(4282580994),
      surface: Color(4294768888),
      onSurface: Color(4280032027),
      onSurfaceVariant: Color(4282664777),
      outline: Color(4285822842),
      outlineVariant: Color(4291086281),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281413680),
      inversePrimary: Color(4288727551),
      primaryFixed: Color(4292011263),
      onPrimaryFixed: Color(4278197303),
      primaryFixedDim: Color(4288727551),
      onPrimaryFixedVariant: Color(4278667645),
      secondaryFixed: Color(4294632529),
      onSecondaryFixed: Color(4280294400),
      secondaryFixedDim: Color(4292724791),
      onSecondaryFixedVariant: Color(4283451136),
      tertiaryFixed: Color(4291683839),
      onTertiaryFixed: Color(4278197554),
      tertiaryFixedDim: Color(4289579495),
      onTertiaryFixedVariant: Color(4281223522),
      surfaceDim: Color(4292663768),
      surfaceBright: Color(4294768888),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294374386),
      surfaceContainer: Color(4294045164),
      surfaceContainerHigh: Color(4293650407),
      surfaceContainerHighest: Color(4293255905),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278204773),
      surfaceTint: Color(4281164183),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280769682),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4283187968),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4286805248),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4280894814),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4284250002),
      onTertiaryContainer: Color(4294967295),
      error: Color(4286911762),
      onError: Color(4294967295),
      errorContainer: Color(4291446846),
      onErrorContainer: Color(4294967295),
      surface: Color(4294768888),
      onSurface: Color(4280032027),
      onSurfaceVariant: Color(4282401605),
      outline: Color(4284243810),
      outlineVariant: Color(4286086013),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281413680),
      inversePrimary: Color(4288727551),
      primaryFixed: Color(4282808239),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4280966804),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4286805248),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4285029376),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4284250002),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282605432),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292663768),
      surfaceBright: Color(4294768888),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294374386),
      surfaceContainer: Color(4294045164),
      surfaceContainerHigh: Color(4293650407),
      surfaceContainerHighest: Color(4293255905),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278199106),
      surfaceTint: Color(4281164183),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278207609),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4280820224),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4283187968),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278395963),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4280894814),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4286911762),
      onErrorContainer: Color(4294967295),
      surface: Color(4294768888),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280362022),
      outline: Color(4282401605),
      outlineVariant: Color(4282401605),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281413680),
      inversePrimary: Color(4293062143),
      primaryFixed: Color(4278207609),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278201940),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4283187968),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4281543936),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4280894814),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4279316294),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292663768),
      surfaceBright: Color(4294768888),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294374386),
      surfaceContainer: Color(4294045164),
      surfaceContainerHigh: Color(4293650407),
      surfaceContainerHighest: Color(4293255905),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4288727551),
      surfaceTint: Color(4288727551),
      onPrimary: Color(4278202970),
      primaryContainer: Color(4278207093),
      onPrimaryContainer: Color(4290566399),
      secondary: Color(4294967295),
      onSecondary: Color(4281807104),
      secondaryContainer: Color(4293645892),
      onSecondaryContainer: Color(4282925056),
      tertiary: Color(4290632440),
      onTertiary: Color(4279579466),
      tertiaryContainer: Color(4288000205),
      onTertiaryContainer: Color(4278396220),
      error: Color(4294948010),
      onError: Color(4285071364),
      errorContainer: Color(4294338651),
      onErrorContainer: Color(4278255616),
      surface: Color(4279440147),
      onSurface: Color(4293255905),
      onSurfaceVariant: Color(4291086281),
      outline: Color(4287533459),
      outlineVariant: Color(4282664777),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293255905),
      inversePrimary: Color(4281164183),
      primaryFixed: Color(4292011263),
      onPrimaryFixed: Color(4278197303),
      primaryFixedDim: Color(4288727551),
      onPrimaryFixedVariant: Color(4278667645),
      secondaryFixed: Color(4294632529),
      onSecondaryFixed: Color(4280294400),
      secondaryFixedDim: Color(4292724791),
      onSecondaryFixedVariant: Color(4283451136),
      tertiaryFixed: Color(4291683839),
      onTertiaryFixed: Color(4278197554),
      tertiaryFixedDim: Color(4289579495),
      onTertiaryFixedVariant: Color(4281223522),
      surfaceDim: Color(4279440147),
      surfaceBright: Color(4282005817),
      surfaceContainerLowest: Color(4279111182),
      surfaceContainerLow: Color(4280032027),
      surfaceContainer: Color(4280295199),
      surfaceContainerHigh: Color(4280953386),
      surfaceContainerHighest: Color(4281677108),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4289252863),
      surfaceTint: Color(4288727551),
      onPrimary: Color(4278196014),
      primaryContainer: Color(4284781773),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294967295),
      onSecondary: Color(4281807104),
      secondaryContainer: Color(4293645892),
      onSecondaryContainer: Color(4280623104),
      tertiary: Color(4290632440),
      onTertiary: Color(4278330170),
      tertiaryContainer: Color(4288000205),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294338651),
      onErrorContainer: Color(4278190080),
      surface: Color(4279440147),
      onSurface: Color(4294900473),
      onSurfaceVariant: Color(4291414989),
      outline: Color(4288717733),
      outlineVariant: Color(4286677894),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293255905),
      inversePrimary: Color(4278864511),
      primaryFixed: Color(4292011263),
      onPrimaryFixed: Color(4278194726),
      primaryFixedDim: Color(4288727551),
      onPrimaryFixedVariant: Color(4278204516),
      secondaryFixed: Color(4294632529),
      onSecondaryFixed: Color(4279570688),
      secondaryFixedDim: Color(4292724791),
      onSecondaryFixedVariant: Color(4282267136),
      tertiaryFixed: Color(4291683839),
      onTertiaryFixed: Color(4278194722),
      tertiaryFixedDim: Color(4289579495),
      onTertiaryFixedVariant: Color(4280039504),
      surfaceDim: Color(4279440147),
      surfaceBright: Color(4282005817),
      surfaceContainerLowest: Color(4279111182),
      surfaceContainerLow: Color(4280032027),
      surfaceContainer: Color(4280295199),
      surfaceContainerHigh: Color(4280953386),
      surfaceContainerHighest: Color(4281677108),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294638335),
      surfaceTint: Color(4288727551),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4289252863),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294967295),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4293645892),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294572799),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4289842923),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279440147),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294573053),
      outline: Color(4291414989),
      outlineVariant: Color(4291414989),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293255905),
      inversePrimary: Color(4278201167),
      primaryFixed: Color(4292471039),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4289252863),
      onPrimaryFixedVariant: Color(4278196014),
      secondaryFixed: Color(4294961237),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4292987963),
      onSecondaryFixedVariant: Color(4279899648),
      tertiaryFixed: Color(4292274687),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4289842923),
      onTertiaryFixedVariant: Color(4278196266),
      surfaceDim: Color(4279440147),
      surfaceBright: Color(4282005817),
      surfaceContainerLowest: Color(4279111182),
      surfaceContainerLow: Color(4280032027),
      surfaceContainer: Color(4280295199),
      surfaceContainerHigh: Color(4280953386),
      surfaceContainerHighest: Color(4281677108),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
