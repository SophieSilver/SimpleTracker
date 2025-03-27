import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '/widgets.dart';

part '../generated/widgets/home.freezed.dart';
part '../generated/widgets/home.g.dart';

@freezed
class PageDescription with _$PageDescription {
  const factory PageDescription({
    required IconData activeIcon,
    required IconData inactiveIcon,
    required String title,
    required Widget child,
  }) = _PageDescription;
}

const pages = [
  PageDescription(
    activeIcon: Icons.add_box,
    inactiveIcon: Icons.add_box_outlined,
    title: "Track",
    child: TrackPage(),
  ),
  PageDescription(
    activeIcon: Icons.insert_chart,
    inactiveIcon: Icons.insert_chart_outlined,
    title: "Data",
    child: DataPage(),
  ),
];

@hwidget
Widget _home(BuildContext context) {
  final pageController = usePageController(keys: []);
  final currentPageIndex = useState(0);

  final pageWidgets =
      useMemoized(() => pages.map((page) => page.child).toList(), []);

  final currentTitle = pages[currentPageIndex.value].title;
  return Scaffold(
    appBar: AppBar(
      title: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        layoutBuilder: _layoutBuilder,
        transitionBuilder: _transitionBuilder,
        child: Text(currentTitle, key: Key(currentTitle)),
      ),
      scrolledUnderElevation: 0.0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.indigo.shade800,
    ),
    body: PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: pageWidgets,
    ),
    bottomNavigationBar: NavigationBar(
      onDestinationSelected: (i) {
        currentPageIndex.value = i;
        pageController.animateToPage(
          i,
          duration: Durations.short4,
          curve: Curves.easeInOutCubic,
        );
      },
      selectedIndex: currentPageIndex.value,
      destinations: pages.indexed
          .map((item) => NavigationDestination(
                icon: item.$1 == currentPageIndex.value
                    ? Icon(item.$2.activeIcon)
                    : Icon(item.$2.inactiveIcon),
                label: item.$2.title,
              ))
          .toList(),
    ),
  );
}

Widget _transitionBuilder(Widget child, Animation<double> animation) {
  final curved =
      CurvedAnimation(parent: animation, curve: Curves.easeInOutBack);
  return ScaleTransition(
    scale: curved,
    child: FadeTransition(
      opacity: curved,
      child: child,
    ),
  );
}

Widget _layoutBuilder(Widget? currentChild, List<Widget> previousChildren) {
  return Stack(
    children: <Widget>[
      ...previousChildren,
      if (currentChild != null) currentChild,
    ],
  );
}
