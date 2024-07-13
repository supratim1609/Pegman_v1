import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/size_boxes.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: black,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.sp,
          vertical: 15.sp,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Order',
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.w500)
                  .copyWith(color: black),
            ),
            const SizedBoxH10(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.sp),
                color: white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(1, 1),
                    spreadRadius: .9,
                    blurRadius: .9,
                    color: altoGrey,
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '#87234098772',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/smalllocation.svg'),
                          const SizedBoxW5(),
                          Text(
                            'Track Order',
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: primary),
                          )
                        ],
                      ),
                    ],
                  ),
                  Text(
                    'Jan 15, 2021 at 6:00 PM',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: black),
                  ),
                  const SizedBoxH10(),
                  Text(
                    '2 Items',
                    style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: black),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Barclays Premium Beer x 1, Smrinoff Lemon Vodka x 1',
                        style: GoogleFonts.poppins(
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: black),
                      ),
                      Text(
                        '\$6.90',
                        style: GoogleFonts.poppins(
                            fontSize: 20.44.sp,
                            fontWeight: FontWeight.w500,
                            color: primary),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBoxH10(),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.sp),
                color: white,
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(1, 1),
                    spreadRadius: .9,
                    blurRadius: .9,
                    color: altoGrey,
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '#972430981233',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset('assets/icons/reorder.svg'),
                          const SizedBoxW5(),
                          Text(
                            'Re Order',
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: primary),
                          )
                        ],
                      ),
                    ],
                  ),
                  Text(
                    'Jan 10, 2021 at 3:00 PM',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: black),
                  ),
                  const SizedBoxH10(),
                  Text(
                    '1 Items',
                    style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: black),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Barclays Premium Beer x 1',
                        style: GoogleFonts.poppins(
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: black),
                      ),
                      Text(
                        '\$2.98',
                        style: GoogleFonts.poppins(
                            fontSize: 20.44.sp,
                            fontWeight: FontWeight.w500,
                            color: primary),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBoxH10(),
          ],
        ),
      ),
    );
  }
}
