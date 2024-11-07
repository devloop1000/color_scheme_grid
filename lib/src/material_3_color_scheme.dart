import 'package:flutter/material.dart';

import 'color_name_model.dart';

class Material3ColorScheme {
  /// A static method to generate a list of color scheme elements.
  static List<ColorName> getColorList(ColorScheme colorScheme) {
    return [
      ColorName('primary', colorScheme.primary,
          description:
              'The color displayed most frequently across your app’s screens and components.'),
      ColorName('onPrimary', colorScheme.onPrimary,
          description:
              'The color of any text or icons that clearly legible when drawn on primary color.'),
      ColorName('primaryContainer', colorScheme.primaryContainer,
          description:
              'The color of surfaces that use the primary color, such as app bars, sheets, and sliders.'),
      ColorName('onPrimaryContainer', colorScheme.onPrimaryContainer,
          description:
              'The color of any text or icons that clearly legible when drawn on primary container color.'),
      ColorName('PrimaryFixed', colorScheme.primaryFixed,
          description:
              'A substitute for the primary container that’s the same color for the dark and light themes.'),
      ColorName('PrimaryFixedDim', colorScheme.primaryFixedDim,
          description:
              'A color used for elements needing more emphasis than the primary fixed color.'),
      ColorName('onPrimaryFixed', colorScheme.onPrimaryFixed,
          description:
              'A color that is used for text and icons that exist on top of elements having the primary fixed color.'),
      ColorName('onPrimaryFixedVariant', colorScheme.onPrimaryFixedVariant,
          description:
              'A color that provides a lower-emphasis option for text and icons than the onPrimaryFixed color.'),
      ColorName('secondary', colorScheme.secondary,
          description:
              'An accent color used for less prominent components in the UI, such as filter chips, while expanding the opportunity for color expression.'),
      ColorName('onSecondary', colorScheme.onSecondary,
          description:
              'A color that’s clearly legible when drawn on secondary.'),
      ColorName('secondaryContainer', colorScheme.secondaryContainer,
          description:
              'A color used for elements needing less emphasis than secondary.'),
      ColorName('onSecondaryContainer', colorScheme.onSecondaryContainer,
          description:
              'A color that’s clearly legible when drawn on secondaryContainer.'),
      ColorName('SecondaryFixed', colorScheme.secondaryFixed,
          description:
              'A substitute for secondaryContainer that’s the same color for the dark and light themes.'),
      ColorName('SecondaryFixedDim', colorScheme.secondaryFixedDim,
          description:
              'A color used for elements needing more emphasis than secondaryFixed.'),
      ColorName('onSecondaryFixed', colorScheme.onSecondaryFixed,
          description:
              'A color that is used for text and icons that exist on top of elements having secondaryFixed color.'),
      ColorName('onSecondaryFixedVariant', colorScheme.onSecondaryFixedVariant,
          description:
              'A color that provides a lower-emphasis option for text and icons than onSecondaryFixed.'),
      ColorName('tertiary', colorScheme.tertiary,
          description:
              'A color used as a contrasting accent that can balance primary and secondary colors or bring heightened attention to an element, such as an input field.'),
      ColorName('onTertiary', colorScheme.onTertiary,
          description:
              'A color that’s clearly legible when drawn on tertiary.'),
      ColorName('tertiaryContainer', colorScheme.tertiaryContainer,
          description:
              'A color used for elements needing less emphasis than tertiary.'),
      ColorName('onTertiaryContainer', colorScheme.onTertiaryContainer,
          description:
              'A color that’s clearly legible when drawn on tertiaryContainer.'),
      ColorName('TertiaryFixed', colorScheme.tertiaryFixed,
          description:
              'A substitute for tertiaryContainer that’s the same color for dark and light themes.'),
      ColorName('TertiaryFixedDim', colorScheme.tertiaryFixedDim,
          description:
              'A color used for elements needing more emphasis than tertiaryFixed.'),
      ColorName('onTertiaryFixed', colorScheme.onTertiaryFixed,
          description:
              'A color that is used for text and icons that exist on top of elements having tertiaryFixed color.'),
      ColorName('onTertiaryFixedVariant', colorScheme.onTertiaryFixedVariant,
          description:
              'A color that provides a lower-emphasis option for text and icons than onTertiaryFixed.'),
      ColorName('error', colorScheme.error,
          description:
              'The color to use for input validation errors, e.g. for InputDecoration.errorText.'),
      ColorName('onError', colorScheme.onError,
          description: 'A color that’s clearly legible when drawn on error'),
      ColorName('errorContainer', colorScheme.errorContainer,
          description:
              'A color used for error elements needing less emphasis than error.'),
      ColorName('onErrorContainer', colorScheme.onErrorContainer,
          description:
              'A color that’s clearly legible when drawn on errorContainer.'),
      ColorName('surface', colorScheme.surface,
          description: 'The background color for widgets like Card'),
      ColorName('onSurface', colorScheme.onSurface,
          description: 'A color that’s clearly legible when drawn on surface.'),
      ColorName('surfaceDim', colorScheme.surfaceDim,
          description:
              'A color that’s always darkest in the dark or light theme.'),
      ColorName('surfaceBright', colorScheme.surfaceBright,
          description:
              'A color that’s always the lightest in the dark or light theme.'),
      ColorName('surfaceContainerLowest', colorScheme.surfaceContainerLowest,
          description:
              'A surface container color with the lightest tone and the least emphasis relative to the surface.'),
      ColorName('surfaceContainerLow', colorScheme.surfaceContainerLow,
          description:
              'A surface container color with a lighter tone that creates less emphasis than surfaceContainer but more emphasis than surfaceContainerLowest.'),
      ColorName('surfaceContainer', colorScheme.surfaceContainer,
          description:
              'A recommended color role for a distinct area within the surface. Surface container color roles are independent of elevation. They replace the old opacity-based model which applied a tinted overlay on top of surfaces based on their elevation.'),
      ColorName('surfaceContainerHigh', colorScheme.surfaceContainerHigh,
          description:
              'A surface container color with a darker tone. It is used to create more emphasis than surfaceContainer but less emphasis than surfaceContainerHighest.'),
      ColorName('surfaceContainerHighest', colorScheme.surfaceContainerHighest,
          description:
              'A surface container color with the darkest tone. It is used to create the most emphasis against the surface.'),
      ColorName('onSurfaceVariant', colorScheme.onSurfaceVariant,
          description:
              'A color that’s clearly legible when drawn on surfaceContainerHighest. (as surfaceVariant is deprecated)'),
      ColorName('inverseSurface', colorScheme.inverseSurface,
          description:
              'A surface color used for displaying the reverse of what’s seen in the surrounding UI, for example in a SnackBar to bring attention to an alert.'),
      ColorName('onInverseSurface', colorScheme.onInverseSurface,
          description:
              'A color that’s clearly legible when drawn on inverseSurface.'),
      ColorName('inversePrimary', colorScheme.inversePrimary,
          description:
              'An accent color used for displaying a highlight color on inverseSurface backgrounds, like button text in a SnackBar.'),
      ColorName('surfaceTint', colorScheme.surfaceTint,
          description:
              'A color used as an overlay on a surface color to indicate a component’s elevation.'),
      ColorName('outline', colorScheme.outline,
          description:
              'A utility color that creates boundaries and emphasis to improve usability.'),
      ColorName('outlineVariant', colorScheme.outlineVariant,
          description:
              'A utility color that creates boundaries for decorative elements when a 3:1 contrast isn’t required, such as for dividers or decorative elements.'),
      ColorName('shadow', colorScheme.shadow,
          description:
              'A color use to paint the drop shadows of elevated components.'),
      ColorName('scrim', colorScheme.scrim,
          description:
              'A color use to paint the scrim around of modal components.'),
    ];
  }
}
