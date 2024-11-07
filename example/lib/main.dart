import 'package:color_scheme_grid/color_scheme_grid.dart';
import 'package:flutter/material.dart';

import 'preview_colors_grid.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatefulWidget {
  const ExampleApp({super.key});

  @override
  State<ExampleApp> createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  ThemeMode themeMode = ThemeMode.dark;

  final ThemeData lightTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue, brightness: Brightness.light),
      useMaterial3: true);

  final ThemeData darkTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue, brightness: Brightness.dark),
      useMaterial3: true);

  void _showColorSchemeGrid(BuildContext context) {
    ColorSchemeGrid.show(context, customColors: [
      const ColorName('customRedLike', Color.fromARGB(255, 233, 32, 5)),
      const ColorName('customGreenShare', Color.fromARGB(255, 5, 233, 32)),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: themeMode,
      title: 'Flutter Color Scheme Grid Example',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Color Scheme Grid Example',
          ),
        ),
        body: Column(
          children: [
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Press the button below to open the Color Scheme Grid Dialog',
                      textAlign: TextAlign.center,
                    ),
                    Builder(builder: (context) {
                      return OutlinedButton(
                        onPressed: () => _showColorSchemeGrid(context),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Open Color Scheme Grid'),
                            SizedBox(width: 8),
                            Icon(Icons.search),
                          ],
                        ),
                      );
                    }),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Dark Mode'),
                        const SizedBox(width: 8),
                        Switch(
                          value: themeMode == ThemeMode.dark,
                          onChanged: (bool value) {
                            setState(() {
                              themeMode =
                                  value ? ThemeMode.dark : ThemeMode.light;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                )),
            const Flexible(child: PreviewColorsGrid()),
          ],
        ),
      ),
    );
  }
}
