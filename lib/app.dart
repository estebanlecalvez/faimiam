// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

import 'home.dart';
import 'login_user.dart';
import 'colors.dart';

// TODO: Convert FaimiamApp to stateful widget (104)
class FaimiamApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Faimiam',
      // TODO: Change home: to a Backdrop with a HomePage frontLayer (104)
      home: HomePage(),
      // TODO: Make currentCategory field take _currentCategory (104)
      // TODO: Pass _currentCategory for frontLayer (104)
      // TODO: Change backLayer field value to CategoryMenuPage (104)
      initialRoute: '/login_user',
      onGenerateRoute: _getRoute,
      // TODO: Add a theme (103)
      theme: _faimiamTheme,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/login_user') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => LoginUser(),
      fullscreenDialog: true,
    );
  }
}

// TODO: Build a Faimiam Theme (103)
final ThemeData _faimiamTheme = _buildFaimiamTheme();

ThemeData _buildFaimiamTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: kFaimiamBrown900,
    primaryColor: kFaimiamPink100,
    buttonColor: kFaimiamPink100,
    scaffoldBackgroundColor: kFaimiamBackgroundWhite,
    cardColor: kFaimiamBackgroundWhite,
    textSelectionColor: kFaimiamPink100,
    errorColor: kFaimiamErrorRed,
    // TODO: Add the text themes (103)
    textTheme: _buildFaimiamTextTheme(base.textTheme),
    primaryTextTheme: _buildFaimiamTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildFaimiamTextTheme(base.accentTextTheme),
    // TODO: Add the icon themes (103)
    primaryIconTheme: base.iconTheme.copyWith(color: kFaimiamBrown900),
    // TODO: Decorate the inputs (103)
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(),
    ),
  );
}

// TODO: Build a Faimiam Text Theme (103)
TextTheme _buildFaimiamTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline: base.headline.copyWith(
          fontWeight: FontWeight.w500,
        ),
        title: base.title.copyWith(fontSize: 18.0),
        caption: base.caption.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: kFaimiamBrown900,
        bodyColor: kFaimiamBrown900,
      );
}
