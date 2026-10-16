void main() {
  double result1 = calculateCartTotal([100, 200, 50]);
  print("Result 1:$result1");

  double result2 = calculateCartTotal(
    [100, 200, 50],
    discountPercent: 10,
    taxPercent: 14,
    deliveryFee: 25,
  );
  print("Result 2:$result2");

  double result3 = calculateCartTotal(
    [100, 200, 50],
    discountPercent: 10,
    isMember: true,
    maxDiscount: 12,
  );
  print("Result 3:$result3");

  double resuit4 = calculateCartTotal([]);
  print("Result 4(Empty cart):$resuit4");
}
//دالة حساب اجمال السلة 
double calculateCartTotal(
  List<double> prices, {
  double discountPercent = 0,
  double taxPercent = 14,
  double deliveryFee = 0,
  bool isMember = false,
  double maxDiscount = 100,
}) {
  //حساب المجموع الكلي للمنتجات
  double subtotal = 0;
  for (int i = 0; i < prices.length; i++) {
    subtotal += prices[i];
  }
  //2 & 3ايجاد مجموع نسب الخصم
  double totalDiscountPercent = discountPercent;
  if (isMember) {
    totalDiscountPercent += 5;
  }
  //4التاكد من ان نسبة الخصم لا تتجاوز maxDiscount
  if (totalDiscountPercent > maxDiscount) {
    totalDiscountPercent = maxDiscount;
  }
  //5تطبيق الخصم علي المجموع
  double discountAmount = subtotal * (totalDiscountPercent / 100);
  double discountSubtotal = subtotal - discountAmount;
  //6حساب قيمة الضريبة علي المبلغ بعد الخصم
  double taxAmount = discountSubtotal * (taxPercent / 100);
  //7 حساب المجموع النهائي
  double finalTotal = discountSubtotal + taxAmount + deliveryFee;
  return finalTotal;
}
