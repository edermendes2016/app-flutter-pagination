import 'package:flutter/material.dart';

final pages = [
  new PageViewModel(
      Colors.lime, Icon(Icons.home, size: 200.0, color: Colors.white), 'Home', 'body text graficos', Icon(Icons.home, size: 35.0, color: Colors.lime)),
  new PageViewModel(
      Colors.blue[200], Icon(Icons.account_balance, size: 200.0, color: Colors.white), 'Pagar', 'body text pay', Icon(Icons.account_balance, size: 35.0, color: Colors.blue[200])),
  new PageViewModel(
      Colors.purple[400], Icon(Icons.graphic_eq, size: 200.0, color: Colors.white), 'Gráficos', 'body text store', Icon(Icons.graphic_eq, size: 35.0, color: Colors.purple[400])),
];

class Page extends StatelessWidget {
  final PageViewModel viewmodel;
  final double percentVisible;

  Page({
    this.viewmodel,
    this.percentVisible = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      color: viewmodel.color,
      child: new Opacity(
        opacity: percentVisible,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Transform(
              transform: new Matrix4.translationValues(
                  0.0, 50.0 * (1.0 - percentVisible), 0.0),
              child: new Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: viewmodel.heroAssetPath,
              ),
            ),
            new Transform(
              transform: new Matrix4.translationValues(
                  0.0, 30.0 * (1.0 - percentVisible), 0.0),
              child: Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: new Text(
                  viewmodel.tittle,
                  style: new TextStyle(color: Colors.white, fontSize: 34.0),
                ),
              ),
            ),
            new Transform(
              transform: new Matrix4.translationValues(
                  0.0, 30.0 * (1.0 - percentVisible), 0.0),
              child: Padding(
                padding: EdgeInsets.only(bottom: 75.0),
                child: new Text(
                  viewmodel.body,
                  textAlign: TextAlign.center,
                  style: new TextStyle(color: Colors.white, fontSize: 17.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageViewModel {
  final Color color;
  final Icon heroAssetPath;
  final String tittle;
  final String body;
  final Icon iconBar;

  PageViewModel(this.color, this.heroAssetPath, this.tittle, this.body,
      this.iconBar);
}
