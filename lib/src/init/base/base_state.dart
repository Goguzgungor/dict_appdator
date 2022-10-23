import 'package:dict_appdator/src/init/setup.dart';
import 'package:flutter/material.dart';


abstract class BaseState<T extends StatefulWidget> extends State<T> {
  ThemeData get themeData => Theme.of(context);
  ColorScheme get colorScheme => Theme.of(context).colorScheme;
  TextTheme get textTheme => Theme.of(context).textTheme;
  TextTheme get primaryTextTheme => Theme.of(context).primaryTextTheme;
  double get height => MediaQuery.of(context).size.height;
  double get width => MediaQuery.of(context).size.width;
  double get topPadding => MediaQuery.of(context).padding.top;
  double get bottomPadding => MediaQuery.of(context).padding.bottom;
  double get appBarSize => topPadding + dynamicHeight(ApplicationSetup.APP_APPBAR_HEIGHT);
  double get extendedAppBarSize => dynamicHeight(50);
  double dynamicHeight(double value) => height / ApplicationSetup.APP_HEIGHT * value;
  double dynamicWidth(double value) => width / ApplicationSetup.APP_WIDTH * value;

}

abstract class BaseStateless extends StatelessWidget {
  const BaseStateless({Key? key}) : super(key: key);
  ThemeData themeData(BuildContext context) => Theme.of(context);
  ColorScheme colorScheme(BuildContext context) => Theme.of(context).colorScheme;
  TextTheme textTheme(BuildContext context) => Theme.of(context).textTheme;
  TextTheme primaryTextTheme(BuildContext context) => Theme.of(context).primaryTextTheme;
  double height(BuildContext context) => MediaQuery.of(context).size.height;
  double width(BuildContext context) => MediaQuery.of(context).size.width;
  double topPadding(BuildContext context) => MediaQuery.of(context).padding.top;
  double appBarSize(BuildContext context) => topPadding(context) + dynamicHeight(context, ApplicationSetup.APP_APPBAR_HEIGHT);
  double extendedAppBarSize(BuildContext context) => dynamicHeight(context, 50);
  double bottomPadding(BuildContext context) => MediaQuery.of(context).padding.bottom;
  double dynamicHeight(BuildContext context, double value) => height(context) / ApplicationSetup.APP_HEIGHT * value;
  double dynamicWidth(BuildContext context, double value) => width(context) / ApplicationSetup.APP_WIDTH * value;

}
