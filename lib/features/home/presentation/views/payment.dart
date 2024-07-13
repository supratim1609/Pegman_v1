import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pegman/core/button.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/size_boxes.dart';
import 'package:pegman/router.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment',
              style: GoogleFonts.poppins(
                  fontSize: 36, fontWeight: FontWeight.w500),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.sp),
                color: white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cash',
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: primary,
                        border: Border.all(color: black),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH10(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.sp),
                color: white,
              ),
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Credit/Debit Card',
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: white,
                            border: Border.all(color: black),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Image.asset('assets/images/card-bg.png'),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Viva Card',
                              style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: white),
                            ),
                            Text(
                              '**** **** ****',
                              style: GoogleFonts.poppins(
                                  color: white, fontWeight: FontWeight.bold),
                            ),
                            const SizedBoxH15(),
                            Text(
                              'Card Holder',
                              style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: white),
                            ),
                            Text(
                              'Arpit Chandak',
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: white),
                            ),
                            const SizedBoxH15(),
                            Text(
                              'Expiry',
                              style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300,
                                  color: white),
                            ),
                            Text(
                              '1/22',
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: white),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: Text(
                          '\$ 2268.98',
                          style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.add),
                      Text(
                        'Add Card',
                        style: GoogleFonts.poppins(
                            fontSize: 19.5,
                            fontWeight: FontWeight.w500,
                            color: black),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15.sp,
                vertical: 30.sp,
              ),
              child: CustomButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.map2);
                },
                text: 'Done',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
