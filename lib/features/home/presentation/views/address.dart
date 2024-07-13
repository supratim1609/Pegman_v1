import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/size_boxes.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: [
            Text(
              'Saved Address',
              style: GoogleFonts.poppins(
                  fontSize: 24, fontWeight: FontWeight.w700),
            ),
            SizedBoxW40(),
            Icon(Icons.add)
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
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
                    children: [
                      Text(
                        'Home',
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      SizedBoxW10(),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: primary),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Text(
                          'Main Address',
                          style: GoogleFonts.poppins(
                              fontSize: 10, fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        width: 160.sp,
                      ),
                      SvgPicture.asset('assets/icons/share.svg')
                    ],
                  ),
                  SizedBoxH20(),
                  Row(
                    children: [
                      Text(
                        'Andrew Ainsley',
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      SizedBoxW10(),
                      Text(
                        '( +1 111 467 378 399 )',
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBoxH10(),
                  Text(
                    '701 7th Ave, New York, NY 10036, USA',
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBoxH10(),
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/smallocation.svg'),
                      SizedBoxH10(),
                      Text(
                        'Pinpoint already',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBoxH10(),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: primary),
                      borderRadius: BorderRadius.circular(25.sp),
                      color: white,
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Change Address',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: primary),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBoxH25(),
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
                        'Apartment',
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      SizedBoxW10(),
                      SizedBox(
                        width: 160.sp,
                      ),
                      SvgPicture.asset('assets/icons/share.svg')
                    ],
                  ),
                  SizedBoxH20(),
                  Row(
                    children: [
                      Text(
                        'Andrew Ainsley',
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      SizedBoxW10(),
                      Text(
                        '( +1 111 467 378 399 )',
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBoxH10(),
                  Text(
                    '701 7th Ave, New York, NY 10004, USA',
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBoxH10(),
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/smallocation.svg'),
                      SizedBoxH10(),
                      Text(
                        'Pinpoint already',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  SizedBoxH10(),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: primary),
                      borderRadius: BorderRadius.circular(25.sp),
                      color: white,
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Change Address',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: primary),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
