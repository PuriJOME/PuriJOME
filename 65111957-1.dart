import 'dart:math';

double calculateTriangleArea(double sideA, double sideB, double sideC) {
  // Step 1: Check if all sides are positive numbers
  if (sideA <= 0 || sideB <= 0 || sideC <= 0) {
    return double.nan; // Return NaN to indicate error
  }

  // Step 2: Check if the given sides form a triangle
  if ((sideA + sideB <= sideC) || (sideA + sideC <= sideB) || (sideB + sideC <= sideA)) {
    return double.nan; // Return NaN to indicate error
  }

  // Step 3: Calculate the area using Heron's formula
  double semiPerimeter = (sideA + sideB + sideC) / 2;
  double area = sqrt(semiPerimeter * (semiPerimeter - sideA) * (semiPerimeter - sideB) * (semiPerimeter - sideC));

  return area;
}

void main() {
  // Example usage:
  double sideA = 3;
  double sideB = 4;
  double sideC = 5;

  double area = calculateTriangleArea(sideA, sideB, sideC);
  
  if (area.isNaN) {
    print("Error: Invalid sides. Unable to calculate triangle area.");
  } else {
    print("The area of the triangle with sides $sideA, $sideB, $sideC is: $area");
  }
}
