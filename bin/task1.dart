void main() {
  double total1 = calculateTotal(50.0, 3);
  print(total1);

  double total2 = calculateTotal(25.5, 2);
  print(total2);
}

double calculateTotal(double price, int quantity) {
  return price * quantity;
}