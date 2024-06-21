int factorial(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

void main() {
  String? input = '5'; // Simulating input since DartPad doesn't support stdin
  int? n = int.tryParse(input ?? '');

  if (n == null || n < 0) {
    print("Please enter a valid positive integer.");
    return;
  }

  int result = factorial(n);
  print("The factorial of $n is: $result");
}
