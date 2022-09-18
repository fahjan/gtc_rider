import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gtc_rider/features/auth/helpPage/controllers/help_page_controller.dart';



class HelpPage extends GetView<HelpPageController> {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: const Icon(Icons.arrow_back_ios, color: Colors.blue),
        backgroundColor: Colors.white,
        title:  Text(
          'help'.tr,
          style: const TextStyle(
              color: Color(0xff3B3B3B),
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Almarai'),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                border: Border.all(
                  color: const Color(0xffE8E8E8),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        'Order',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            letterSpacing: 3),
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        '#544948',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const ExpansionTile(
                    title: Text(
                      'Restaurant taking too long',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text('Report wait or reject order'),
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          '548581511',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  ExpansionTile(
                    title: Text(
                      'FAQs'.tr,
                      style: const TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                    children: const <Widget>[
                      ListTile(
                        title: Text(
                          '548581511',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xffE8E8E8),
                        ),
                        borderRadius: BorderRadius.circular(12)),
                    child: MaterialButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.call,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Call rider support',
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
