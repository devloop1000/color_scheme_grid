
[![package publisher](https://img.shields.io/badge/pub-v1.0.0-orange)](https://pub.dev/packages/color_scheme_grid)
[![package publisher](https://img.shields.io/badge/publisher-Devloop1000-blue)](https://pub.dev/packages/color_scheme_grid/publisher)
[![package publisher](https://img.shields.io/badge/license-MIT-purple)](https://opensource.org/license/MIT)

# color_scheme_grid

A Flutter package that provides a simple tool to help you visualize your app's color scheme in runtime. This package displays a grid of Material color scheme colors, making it easier to see and understand the colors used in your app. It automatically takes your Material 3 colors from the context and can also take custom colors.

## Features

- Display a grid of colors from the Material color scheme.
- Support for custom colors.
- Easy to integrate and use.

    <img src="https://raw.githubusercontent.com/devloop1000/color_scheme_grid/main/doc/color_scheme_grid.gif?raw=true"
        alt="An animated image of the sample app" height="400"/>

## Installation

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  color_scheme_grid: ^1.0.0
```

Then, run flutter pub get to install the package.

Usage
1. To use the ColorSchemeGrid in your app, follow these steps:

```
Import the package:
    import 'package:color_scheme_grid/color_scheme_grid.dart';
```

2. Use the ColorSchemeGrid.show method to display the color scheme grid in a dialog:

```
import 'package:flutter/material.dart';
import 'package:color_scheme_grid/color_scheme_grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Scheme Grid Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Color Scheme Grid Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              ColorSchemeGrid.show(context, customColors: [
                const ColorName('customRedLike', Color.fromARGB(255, 233, 32, 5)),
                const ColorName('customGreenShare', Color.fromARGB(255, 5, 233, 32)),
              ]);
            },
            child: const Text('Show Color Scheme Grid'),
          ),
        ),
      ),
    );
  }
}
```

| Light mode | Dark mode
| ---------- | ---
<img width=300 src=https://raw.githubusercontent.com/devloop1000/color_scheme_grid/main/doc/home_desc_light.jpg> | <img width=300 src=https://raw.githubusercontent.com/devloop1000/color_scheme_grid/main/doc/home_desc_dark.jpg> 

__Example__

An example Flutter app demonstrating the usage of the color_scheme_grid package can be found in the example directory.

__License__

This project is licensed under the MIT License. See the LICENSE file for details.

__Contributions__

are welcome! Please open an issue or submit a pull request if you have any improvements or suggestions.

__Acknowledgements__

This package was inspired by the need to easily visualize and debug color schemes in Flutter apps. 