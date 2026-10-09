import 'dart:io';

import 'switchcase.dart';

void main() {
  var order = true;

  //While loop to allow continuous ordering and input validation
  while (order) {
    print("==================================");
    print('Pizza Price: "Small: 5 USD, Medium: 7 USD, Large: 10USD"');
    print("Please enter your pizza size (small, medium, or large):");

    //Read user input for pizza size
    String? pizzaSize = stdin.readLineSync();

    //Call the getPizzaPrice function from switchcase.dart
    int price = getPizzaPrice(pizzaSize);

    if (price > 0) {
      print("How many pizzas do you want of $pizzaSize?");

      //Parse integer input
      int quantity = int.parse(stdin.readLineSync()!);

      //Calculate total payment
      int totalPayment = price * quantity;
      print("Your Total Payment is: \$$totalPayment");
    }

    //Ask user if they want to order again
    print("Do you want to order again? (yes/no):");
    String? choice = stdin.readLineSync();

    if (choice != 'yes') {
      order = false;
      print("Thank you for your order!");
    }
  }
}
