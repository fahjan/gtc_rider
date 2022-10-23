import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliverOrder extends StatefulWidget {
  const DeliverOrder({Key? key}) : super(key: key);

  @override
  State<DeliverOrder> createState() => _DeliverOrderState();
}

class _DeliverOrderState extends State<DeliverOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0,
        title: Text(
          'Order#54465',
          style: GoogleFonts.openSans(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w600,
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
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              // margin: EdgeInsets.all(24),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 29),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/images/ic_taxi.svg'),
                          const SizedBox(width: 8),
                          Text(
                            'Delivery estimate',
                            style: GoogleFonts.openSans(
                              color: const Color(0xFF2A2A2A),
                              fontSize: 16,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '21:45',
                            style: GoogleFonts.openSans(
                              color: const Color(0xFF2A2A2A),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/images/ic_time.svg'),
                          const SizedBox(width: 8),
                          Text(
                            'Time waited',
                            style: GoogleFonts.openSans(
                              color: const Color(0xFF2A2A2A),
                              fontSize: 16,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '40s',
                            style: GoogleFonts.openSans(
                              color: const Color(0xFF2A2A2A),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 14),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '1-',
                          style: GoogleFonts.openSans(
                            fontSize: 14,
                            color: const Color(0xFF3ED3CD),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          'Call the customer to let them know you ',
                          style: GoogleFonts.openSans(
                            fontSize: 14,
                            color: const Color(0xFF2A2A2A),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 26),
                      child: Text(
                        'have arrived.',
                        style: GoogleFonts.openSans(
                          fontSize: 14,
                          color: const Color(0xFF2A2A2A),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Row(
                      children: [
                        Text(
                          '2-',
                          style: GoogleFonts.openSans(
                            fontSize: 14,
                            color: const Color(0xFF3ED3CD),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          'You can also send them a notification if ',
                          style: GoogleFonts.openSans(
                            fontSize: 14,
                            color: const Color(0xFF2A2A2A),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(start: 26),
                      child: Text(
                        'they aren\'t answering your call.',
                        style: GoogleFonts.openSans(
                          fontSize: 14,
                          color: const Color(0xFF2A2A2A),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 35),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          primary: const Color(0xFF25B6C7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        child: Text(
                          'Send Notification',
                          style: GoogleFonts.openSans(
                            fontSize: 16,
                            color: const Color(0xFFFFFFFF),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    Text(
                      'If you have sent the notification and waited after sendeing it ,you can leave the order in safe place and mark it completed.',
                      style: GoogleFonts.openSans(
                        fontSize: 14,
                        color: const Color(0xFF2A2A2A),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 46,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 46),
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                          side: const BorderSide(
                            color: Color(0xFF25B6C7),
                          ),
                        ),
                        elevation: 0,
                      ),
                      child: Text(
                        'Leave order',
                        style: GoogleFonts.openSans(
                          fontSize: 16,
                          color: const Color(0xFF25B6C7),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
