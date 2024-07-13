import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/size_boxes.dart';
import 'package:pegman/core/style.dart';
import 'package:pegman/core/text_field.dart';
import 'package:pegman/features/home/presentation/widgets/drink_tile.dart';

class AllDrinkScreen extends StatefulWidget {
  const AllDrinkScreen({super.key});

  @override
  State<AllDrinkScreen> createState() => _AllDrinkScreenState();
}

class _AllDrinkScreenState extends State<AllDrinkScreen> {
  String filterBy = 'all';
  List<String> filters = [
    'All',
    'Craft',
    'Imported',
    'Local',
    'Alcoholic',
    'Non-Alcohilic',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          SvgPicture.asset('assets/icons/sort.svg'),
          const SizedBoxW15(),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Beer',
              style: textStyle18.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 24.sp,
              ),
            ),
            const SizedBoxH10(),
            CustomTextField(
              controller: TextEditingController(),
              hintText: 'Search for drink',
              prefixIcon: const Icon(
                Icons.search,
              ),
            ),
            const SizedBoxH15(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (var e in filters)
                    InkWell(
                      onTap: () {
                        setState(() {
                          filterBy = e;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 15.sp),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.sp, horizontal: 10.sp),
                        decoration: BoxDecoration(
                            color: filterBy.toLowerCase() == e.toLowerCase()
                                ? primary
                                : null,
                            borderRadius: BorderRadius.circular(5.r),
                            border: Border.all(
                                color: filterBy.toLowerCase() == e.toLowerCase()
                                    ? primary
                                    : altoGrey)),
                        child: Text(
                          e,
                          style: textStyle12.copyWith(
                            color: filterBy.toLowerCase() == e.toLowerCase()
                                ? white
                                : black,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBoxH15(),
            const DrinkTile(index: 1),
            const SizedBoxH10(),
            const DrinkTile(
              index: 2,
            ),
          ],
        ),
      ),
    );
  }
}
