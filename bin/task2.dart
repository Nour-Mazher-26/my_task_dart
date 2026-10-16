void main() {
  print(greetUser("Ahmed"));
  print(greetUser("Sara", "Welcome"));
}

String greetUser(String name, [String greeting = 'Hello']) {
  return "$greeting $name";
}
