import 'package:flutter/material.dart';

import 'color_name_model.dart';
import 'material_3_color_scheme.dart';

class ColorSchemeGrid extends StatelessWidget {
  final List<ColorName> customColors;

  /// Constructor for [ColorSchemeGrid] with an optional list of custom colors.
  const ColorSchemeGrid({super.key, this.customColors = const []});

  /// Method to show the ColorSchemeGrid in a dialog.
  static void show(BuildContext context,
      {List<ColorName> customColors = const []}) {
    showDialog(
      context: context,
      builder: (context) => ColorSchemeGrid(customColors: customColors),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    // Combine the default color list with custom colors, ensuring no duplicates by name.
    final List<ColorName> colorList = [
      ...Material3ColorScheme.getColorList(colorScheme),
      ...customColors,
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Material 3 Color Scheme'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: colorList.length,
          itemBuilder: (context, index) {
            final colorItem = colorList[index];
            return InkWell(
                onTap: () => _showColorDescription(context, colorItem),
                child: _buildColorTile(colorItem));
          },
        ),
      ),
    );
  }

  void _showColorDescription(BuildContext context, ColorName colorItem) {
    final containerColor = Theme.of(context).colorScheme.surfaceContainerHigh;
    final onColor = _getTextColor(containerColor);
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            titlePadding: const EdgeInsets.all(16),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(colorItem.name,
                    style: TextStyle(
                      color: onColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    )),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(colorItem.toRgb,
                        style: TextStyle(
                          color: onColor.withOpacity(0.8),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        )),
                    Container(
                      margin: const EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                        color: colorItem.color,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: onColor.withOpacity(0.26), width: 2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          colorItem.toHex,
                          style: TextStyle(
                            color: _getTextColor(colorItem.color),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            content: Text(
              colorItem.description ?? 'No description available.',
              style: TextStyle(
                  color: onColor, fontSize: 16, fontWeight: FontWeight.w400),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: Navigator.of(context).pop,
                child: const Text('Close'),
              ),
            ],
          );
        });
  }

  /// Builds a tile for displaying a color and its name.
  Widget _buildColorTile(ColorName colorItem) {
    return Container(
      decoration: BoxDecoration(
        color: colorItem.color,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black26, width: 1),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            colorItem.name,
            style: TextStyle(
              color: _getTextColor(colorItem.color),
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
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
