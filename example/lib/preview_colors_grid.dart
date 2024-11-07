import 'package:flutter/material.dart';

// preview of the main colors in the color scheme
class PreviewColorsGrid extends StatelessWidget {
  const PreviewColorsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1.5,
      ),
      itemCount: 12,
      itemBuilder: (BuildContext context, int index) {
        final Color color;
        switch (index) {
          case 0:
            color = colorScheme.primary;
            break;
          case 1:
            color = colorScheme.primaryContainer;
            break;
          case 2:
            color = colorScheme.secondary;
            break;
          case 3:
            color = colorScheme.secondaryContainer;
            break;
          case 4:
            color = colorScheme.tertiary;
            break;
          case 5:
            color = colorScheme.tertiaryContainer;
            break;
          case 6:
            color = colorScheme.error;
            break;
          case 7:
            color = colorScheme.onError;
            break;
          case 8:
            color = colorScheme.onPrimary;
            break;
          case 9:
            color = colorScheme.onSecondary;
            break;
          case 10:
            color = colorScheme.onTertiary;
            break;
          case 11:
            color = colorScheme.surface;
            break;
          default:
            color = Colors.transparent;
        }

        return Container(
          color: color,
          child: Center(
            child: Text(
              color.value.toRadixString(16).toUpperCase(),
              style: TextStyle(
                color: _getTextColor(color),
                fontSize: 12,
              ),
            ),
          ),
        );
      },
    );
  }

  /// A helper function to decide text color based on the background brightness.
  Color _getTextColor(Color backgroundColor) {
    return ThemeData.estimateBrightnessForColor(backgroundColor) ==
            Brightness.dark
        ? Colors.white
        : Colors.black;
  }
}
