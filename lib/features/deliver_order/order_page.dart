import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rider_get/order.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  List<Order> orders = [
    Order(
      title: 'Order #0123456',
      subTitle: '5 Items',
      isChecked: false,
      isExpanded: false,
      ordersList: const [
        'slalra in sataoen',
        'theken piza',
        'fatet homes',
        'fata shamy',
      ],
    ),
    Order(
      title: 'Order #9876543',
      subTitle: '2 Items',
      isChecked: false,
      isExpanded: false,
      ordersList: const [
        'fatet homes',
        'fata shamy',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Order',
          style: GoogleFonts.openSans(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Color(0xFF25B6C7),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 155,
          ),
          const Divider(
            indent: 24,
            endIndent: 24,
          ),
          const DetailsRows(
            title: 'Delivery time',
            subTitle: '03:45 pm',
          ),
          const DetailsRows(
            title: 'Rider tip',
            subTitle: '2.0 £',
          ),
          const DetailsRows(
            title: 'Delivery fee',
            subTitle: '20.5 £',
          ),
          const SizedBox(
            height: 24,
          ),
          Column(
            children: drawWidgets(orders),
          ),
        ],
      ),
      bottomNavigationBar: const BottomButton(),
    );
  }

  List<Widget> drawWidgets(List<Order> orders) {
    List<Widget> widgets = [];
    for (Order order in orders) {
      widgets.add(
        OrderCheckBox(
          title: order.title,
          subTitle: order.subTitle,
          isChecked: order.isChecked,
          isExpanded: order.isExpanded,
          orders: order.ordersList,
          onTap: () => setState(() {
            order.isExpanded = !order.isExpanded;
          }),
          onChanged: (bool? value) {
            setState(() {
              if (value != null) {
                order.isChecked = value;
              }
            });
          },
        ),
      );
      widgets.add(
        const SizedBox(
          height: 24,
        ),
      );
    }
    return widgets;
  }
}

class DetailsRows extends StatelessWidget {
  const DetailsRows({
    required this.title,
    required this.subTitle,
    Key? key,
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.openSans(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF1D2030),
            ),
          ),
          Text(
            subTitle,
            style: GoogleFonts.openSans(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF1D2030),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        debugPrint('Navigate to checkout');
        Navigator.pushNamed(context, '/deliver_order');
      },
      child: Container(
        color: const Color(0xFF25B6C7),
        alignment: Alignment.center,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'TICK ORDER TO CONTINUE',
              style: GoogleFonts.openSans(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 60,
            ),
            SvgPicture.asset('assets/images/ic_double_arrow.svg'),
            const SizedBox(
              width: 28,
            ),
          ],
        ),
      ),
    );
  }
}

class OrderCheckBox extends StatelessWidget {
  const OrderCheckBox({
    required this.title,
    required this.subTitle,
    required this.isChecked,
    required this.isExpanded,
    required this.onTap,
    required this.onChanged,
    required this.orders,
    Key? key,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final bool isChecked;
  final bool isExpanded;
  final Function() onTap;
  final Function(bool?) onChanged;
  final List<String> orders;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
          color: const Color(0xFFF6F6F6),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.openSans(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF3B3B3B),
                    ),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: onTap,
                        child: Icon(
                          isExpanded
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: const Color(0xFF3ED3CD),
                        ),
                      ),
                      Text(
                        subTitle,
                        style: GoogleFonts.openSans(
                          color: const Color(0xFF3ED3CD),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: 18,
                height: 18,
                color: Colors.white,
                child: Checkbox(
                  value: isChecked,
                  onChanged: onChanged,
                  activeColor: Colors.white,
                  checkColor: const Color(0xFF25B6C7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),
            ],
          ),
        ),
        Visibility(
          visible: isExpanded,
          child: Align(
            alignment: AlignmentDirectional.topStart,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: getOrders(orders),
              ),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> getOrders(List<String> orders) {
    List<Widget> widgets = [];
    for (String order in orders) {
      widgets.add(
        Text(
          order,
          style: GoogleFonts.openSans(
            fontSize: 16,
          ),
        ),
      );
      widgets.add(
        const SizedBox(
          height: 13,
        ),
      );
    }
    return widgets;
  }
}
