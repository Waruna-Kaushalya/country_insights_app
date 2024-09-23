import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/extentions/extentions.dart';
import '../../../../../core/widgets/vertical_gap_widget.dart';
import '../../bloc/country_bloc/country_bloc.dart';
import 'country_details_shimmer.dart';

class CountryDataWidget extends StatelessWidget {
  const CountryDataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountryBloc, CountryState>(
      buildWhen: (previous, current) => previous.country != current.country,
      builder: (context, state) {
        if (state.countryFetchByCodeStateStatus.isSuccess) {
          return Padding(
            padding: EdgeInsets.all(AppPaddings.p16.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Country code: ${state.country.code!}",
                  style: context.theme.textTheme.titleLarge,
                ),
                VerticalGapWidget(AppPaddings.p12.h),
                Text(
                  "Country capital: ${state.country.capital!}",
                  style: context.theme.textTheme.titleLarge,
                ),
                VerticalGapWidget(AppPaddings.p12.h),
                Text(
                  "Country continent: ${state.country.continent!.name!}",
                  style: context.theme.textTheme.titleLarge,
                ),
                VerticalGapWidget(AppPaddings.p12.h),
                Text(
                  "Country currency: ${state.country.currency!}",
                  style: context.theme.textTheme.titleLarge,
                ),
                VerticalGapWidget(AppPaddings.p12.h),
                Text(
                  "Country phone: ${state.country.phone!}",
                  style: context.theme.textTheme.titleLarge,
                ),
              ],
            ),
          );
        } else if (state.countryFetchByCodeStateStatus.isLoading) {
          return const CountryDetailsShimmer();
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
