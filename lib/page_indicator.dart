import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pagination_app/pages.dart';

class PageIndicator extends StatelessWidget {
  final PageIndicatorViewModel viewModel;
  PageIndicator({
    this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: [
        new Expanded(child: new Container()),
        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new PageBubble(
              viewModel: new PageBubbleViewModel(const Color(0x454545), true,
                  0.0, Icon(Icons.home, size: 25.0, color: Colors.white), null),
            ),
            new PageBubble(
              viewModel: new PageBubbleViewModel(const Color(0x454545), true,
                  0.0, Icon(Icons.home, size: 25.0, color: Colors.white), null),
            ),
            new PageBubble(
              viewModel: new PageBubbleViewModel(const Color(0x454545), true,
                  0.0, Icon(Icons.home, size: 25.0, color: Colors.white), null),
            ),
          ],
        )
      ],
    );
  }
}

class PageBubble extends StatelessWidget {
  final PageBubbleViewModel viewModel;

  const PageBubble({this.viewModel});

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.all(10.0),
      child: new Container(
        width: lerpDouble(25.0, 50.0, viewModel.activePercent),
        height: lerpDouble(25.0, 50.0, viewModel.activePercent),
        decoration: new BoxDecoration(
            shape: BoxShape.circle,
            color:
                viewModel.isHollow ? Colors.transparent : const Color(0xFFFFFF),
            border: new Border.all(
                color: viewModel.isHollow
                    ? const Color(0xFFFFFF)
                    : Colors.transparent)),
        child: new Opacity(
          opacity: viewModel.activePercent,
          child: viewModel.iconBar,
        ),
      ),
    );
  }
}

enum SlideDirection {
  leftToRight,
  rightToLeft,
}

class PageIndicatorViewModel {
  final List<PageViewModel> pages;
  final int activeIndex;
  final double slidePercent;
  final SlideDirection slideDirection;
  PageIndicatorViewModel(
      this.pages, this.activeIndex, this.slidePercent, this.slideDirection);
}

class PageBubbleViewModel {
  final Color color;
  final Icon heroAssetPath;
  final bool isHollow;
  final double activePercent;
  final Icon iconBar;

  PageBubbleViewModel(this.color, this.isHollow, this.activePercent,
      this.heroAssetPath, this.iconBar);
}
