import 'package:color_scheme_grid/color_scheme_grid.dart';
import 'package:color_scheme_grid/src/material_3_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColorName', () {
    test('should create a ColorName instance', () {
      const colorName = ColorName('Red', Color(0xFFFF0000));
      expect(colorName.name, 'Red');
      expect(colorName.color, const Color(0xFFFF0000));
    });

    test('should throw an ArgumentError if the name is empty', () {
      expect(
          () => ColorName('', const Color(0xFFFF0000)), throwsAssertionError);
    });

    test('should return the correct hex value', () {
      const colorName = ColorName('Red', Color(0xFFFF0000));
      expect(colorName.toHex, '#ff0000');
    });

    test('should return the correct RGB value', () {
      const colorName = ColorName('Red', Color(0xFFFF0000));
      expect(colorName.toRgb, 'rgb(255, 0, 0)');
    });

    test('should return the correct string representation', () {
      const colorName = ColorName('Red', Color(0xFFFF0000));
      expect(colorName.toString(), 'ColorName{name: Red, color: #ff0000}');
    });
  });

  group('ColorSchemeGrid', () {
    testWidgets('should show the ColorSchemeGrid in a dialog',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) => ElevatedButton(
              onPressed: () => ColorSchemeGrid.show(context),
              child: const Text('Show Color Scheme Grid'),
            ),
          ),
        ),
      );

      await tester.tap(find.text('Show Color Scheme Grid'));
      await tester.pumpAndSettle();

      expect(find.text('Material 3 Color Scheme'), findsOneWidget);
    });
  });

  group('Material3ColorScheme', () {
    test('should return a list of color scheme elements', () {
      const colorScheme = ColorScheme.light();
      final colorList = Material3ColorScheme.getColorList(colorScheme);

      // Check the color list is not empty.
      expect(colorList.isNotEmpty, true);
      // Check the first color in the list is the primary color.
      expect(colorList[0].name, 'primary');
      // Check the first color has description.
      expect(colorList[0].description?.isNotEmpty, true);
    });
  });
}
