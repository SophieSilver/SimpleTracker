import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part '../generated/widgets/app_page.g.dart';

@swidget
Widget _appPage(
  BuildContext context, {
  required int navIndex,
  String titleText = "",
  Widget? child,
}) {
  return Scaffold(
    appBar: AppBar(
      title: Text(titleText),
      foregroundColor: Colors.white,
      backgroundColor: Colors.indigo.shade800,
    ),
    body: DefaultTextStyle(
      style: Theme.of(context).textTheme.bodyLarge!,
      child: child ?? SizedBox(),
    ),
    bottomNavigationBar: NavigationBar(
      selectedIndex: navIndex,
      onDestinationSelected: (index) {
        Navigator.of(context).pushReplacementNamed( switch (index) {
          0 => "/track",
          1 => "/data",
          _ => throw Exception(),
        } );
      },
      destinations: [
        NavigationDestination(
          icon: Icon(navIndex == 0 ? Icons.add_box : Icons.add_box_outlined),
          label: "Track",
        ),
        NavigationDestination(
          icon: Icon(Icons.analytics_outlined),
          label: "Data",
        ),
      ],
    ),
  );
}
