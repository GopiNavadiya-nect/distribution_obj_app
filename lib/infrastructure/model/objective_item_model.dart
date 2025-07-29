class ObjectiveItem {
  final String product;
  final String client;
  final String turnoverRate;
  final int bonus;
  bool isSelected;

  ObjectiveItem({
    required this.product,
    required this.client,
    required this.turnoverRate,
    required this.bonus,
    this.isSelected = false,
  });
}
