class PrimeCalculationUtil {
  static double isPrimeNumber({
    required double number,
  }) {
    double divider = 0;
    for (int i = 0; i <= number; i++) {
      if (number%i == 0) divider++;
    }
    return divider == 2 ? divider : 0;
  }
}