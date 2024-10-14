extension NumberFormatter on int {
  String formatWithSuffix() {
    if (this >= 1000000000) {
      return (this / 1000000000).toStringAsFixed(1) + 'B'; // Billion
    } else if (this >= 1000000) {
      return (this / 1000000).toStringAsFixed(1) + 'M'; // Million
    } else if (this >= 1000) {
      return (this / 1000).toStringAsFixed(1) + 'K'; // Thousand
    } else {
      return this.toString(); // Less than 1000, no formatting needed
    }
  }
}
