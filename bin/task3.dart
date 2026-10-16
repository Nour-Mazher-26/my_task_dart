//task 3
void main() {
  double order1 = calculateOrder(price: 100.0, quantity: 2);
  print(order1); //200.0 (بدون خصم او مصاريف توصيل )

  double order2 = calculateOrder(
    price: 50.0,
    quantity: 4,
    discount: 20.0,
    delivertFee: 15.0,
  );
  print(order2); //(50*4)-20+15=195.0
}

double calculateOrder({
  required double price,
  required int quantity,
  double discount = 0,
  double delivertFee = 0,
}) {
  return (price * quantity) - discount + delivertFee;
}