// ignore_for_file: sort_child_properties_last, must_be_immutable, prefer_const_constructors_in_immutables


import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gtc_rider/features/home/presentation/controllers/login_controllers.dart';

class LoginPage extends GetView<LoginController> {
  LoginPage({Key? key}) : super(key: key);
  bool va1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          padding: const EdgeInsets.only(top: 51),
          alignment: Alignment.topCenter,
          width: double.infinity,
          height: 122,
          child: Text(
            'daddyEat',
            style: GoogleFonts.combo(
              color: Colors.white,
              fontSize: 44,
              fontWeight: FontWeight.w400,
            ),
          ),
          color: const Color(0xFF2A2A2A),
        ),
        const SizedBox(height: 39),
        Text(
          'Are you ready to go?',
          textAlign: TextAlign.center,
          style: GoogleFonts.openSans(
            color: const Color(0xFF2A2A2A),
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          'signin now',
          textAlign: TextAlign.center,
          style: GoogleFonts.openSans(
            color: const Color(0xFF2A2A2A),
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 23),
        Padding(
          padding: const EdgeInsets.only(
            right: 40,
            left: 40,
          ),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF959DAD),
                ),
                decoration: InputDecoration(
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF959DAD),
                  ),
                  hintText: "ID Number",
                  contentPadding: const EdgeInsets.only(
                    right: 25,
                    left: 25,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24.0),
                    borderSide: const BorderSide(
                      color: Color(0xFFE7ECED),
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24.0),
                    borderSide: const BorderSide(
                      color: Color(0xFFE7ECED),
                      width: 2,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              TextFormField(
                keyboardType: TextInputType.number,
                obscureText: true,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF959DAD),
                ),
                decoration: InputDecoration(
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF959DAD),
                  ),
                  hintText: "Password",
                  contentPadding: const EdgeInsets.only(
                    right: 25,
                    left: 25,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24.0),
                    borderSide: const BorderSide(
                      color: Color(0xFFE7ECED),
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24.0),
                    borderSide: const BorderSide(
                      color: Color(0xFFE7ECED),
                      width: 2,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              CheckboxListTile(
                value: va1,
                selected: va1,
                onChanged: (bool? va2) {
                  va1 = va2!;
                },
                title: const Text('Remember me'),
              ),
              const SizedBox(height: 28),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Login'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 48),
                  backgroundColor: const Color(0xFF25B6C7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  textStyle: GoogleFonts.cairo(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                child: const Text('signin'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 48),
                  backgroundColor: Colors.white,
                  foregroundColor: const Color(0xFF25B6C7),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.0),
                      side: const BorderSide(
                        color: Color(0xFF25B6C7),
                        width: 2,
                      )),
                  textStyle: GoogleFonts.cairo(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 64),
              Row(
                children: [
                  Text(
                    'forgot password?',
                    style: GoogleFonts.cairo(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Click here',
                      style: GoogleFonts.cairo(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
