extension FigmaDimention on double {
  double toFigmaHeight(double fontSize) {
    return this / fontSize;
  }
}
/// Example Usage

// Text(
//      style: TextStyle(height: 16.0.toFigmaHeight(14)),
//      'Extension',
//       textAlign: TextAlign.justify,
//      )
