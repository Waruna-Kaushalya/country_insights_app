import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/widgets/vertical_gap_widget.dart';

class CountryDetailsShimmer extends StatelessWidget {
  const CountryDetailsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppPaddings.p16.r),
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _shimmerLine(context, width: 200),
            VerticalGapWidget(AppPaddings.p12.h),
            _shimmerLine(context, width: 250),
            VerticalGapWidget(AppPaddings.p12.h),
            _shimmerLine(context, width: 220),
            VerticalGapWidget(AppPaddings.p12.h),
            _shimmerLine(context, width: 180),
            VerticalGapWidget(AppPaddings.p12.h),
            _shimmerLine(context, width: 150),
          ],
        ),
      ),
    );
  }

  Widget _shimmerLine(
    BuildContext context, {
    double width = double.infinity,
    double height = 20,
  }) {
    return Container(
      width: width,
      height: height.h,
      color: Colors.white,
    );
  }
}
