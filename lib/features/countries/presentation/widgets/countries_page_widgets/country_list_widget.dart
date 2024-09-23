import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_paddings.dart';
import '../../../../../core/extentions/extentions.dart';
import '../../../../../core/widgets/horizontal_divider_widget.dart';
import '../../../../../core/widgets/horizontal_gap_widget.dart';
import '../../../../../routes/routes_paths.dart';
import '../../bloc/countries_bloc/countries_bloc.dart';

class CountryListWidget extends StatelessWidget {
  const CountryListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        AppPaddings.p16.r,
      ),
      child: BlocBuilder<CountriesBloc, CountriesState>(
        buildWhen: (previous, current) =>
            previous.countries != current.countries,
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.countries.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  final String countryCode = state.countries[index].code!;

                  context.pushNamed(
                    RoutesPaths.country,
                    queryParameters: {
                      'code': countryCode,
                    },
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Text(
                            state.countries[index].name!,
                            style:
                                context.theme.textTheme.titleMedium!.copyWith(
                              fontSize: 18.sp,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        HorizontalGapWidget(AppPaddings.p4.w),
                        Text(
                          state.countries[index].emoji!,
                          style: context.theme.textTheme.titleLarge,
                        ),
                      ],
                    ),
                    if (state.countries[index].capital != null)
                      Text(
                        "Capital: ${state.countries[index].capital}",
                        style: context.theme.textTheme.titleMedium,
                      ),
                    Text(
                      "Continent: ${state.countries[index].continent!.name!.name}",
                      style: context.theme.textTheme.titleMedium,
                    ),
                    const HorizontalDividerWidget(),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
