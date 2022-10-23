class Order {
  final String title;
  final String subTitle;
  bool isChecked;
  bool isExpanded;
  final List<String> ordersList;

  Order({
    required this.title,
    required this.subTitle,
    required this.isChecked,
    required this.isExpanded,
    required this.ordersList,
  });
}
