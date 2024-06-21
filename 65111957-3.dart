void main() {
  int n = 100; // ตัวอย่างเช่น ให้ n เป็น 100

  if (n <= 0) {
    print("Please enter a valid positive integer.");
    return;
  }

  int sum = 0;

  for (int i = 1; i < n; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      sum += i;
    }
  }

  print("The sum of all multiples of 3 and 5 below $n is: $sum");
}
