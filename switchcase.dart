int getPizzaPrice(String? size) {
  int price = 0;
  switch (size) {
    case 'small':
      price = 5;
      break;
    case 'medium':
      price = 7;
      break;
    case 'large':
      price = 10;
      break;
    default:
      print('Invalid size! Please choose small, medium, or large.');
      break;
  }
  return price;
}
