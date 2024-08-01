import 'package:dev_challenge_2/core/Theme/AppAssets.dart';
import 'package:dev_challenge_2/core/Theme/AppColors.dart';
import 'package:dev_challenge_2/features/home/cubit/layout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        final cubit = LayoutCubit.get(context);
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          body: cubit.pages[cubit.currentIndex],
          bottomNavigationBar: NavigationBar(
            backgroundColor: Theme.of(context).colorScheme.onPrimary,
            elevation: 4.0,
            selectedIndex: cubit.currentIndex,
            onDestinationSelected: (value) {
              cubit.changeLayout(value);
            },
            shadowColor: Colors.black.withOpacity(0.5),
            indicatorColor: Colors.transparent,
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            destinations: [
              NavigationDestination(
                icon: Image.asset(
                  AppAssets.home,
                  height: 24.h,
                  color: cubit.currentIndex == 0
                      ?  AppColors.primaryColor
                      : AppColors.layout,
                ),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Image.asset(
                  AppAssets.search,
                  height: 24.h,
                  color: cubit.currentIndex == 1
                        ?  AppColors.primaryColor
                      : AppColors.layout,
                ),
                label: 'Search',
              ),
              NavigationDestination(
                icon: Image.asset(AppAssets.cook, height: 110.h,width: 110.w,),
                label: '',
              ),
              NavigationDestination(
                icon: Image.asset(
                  AppAssets.notif,
                  height: 24.h,
                  color: cubit.currentIndex == 3
                      ?  AppColors.primaryColor
                      : AppColors.layout,
                ),
                label: 'Notification',
              ),
              NavigationDestination(
                icon: Image.asset(        
                  AppAssets.user,
                  color: cubit.currentIndex == 4
                      ? AppColors.primaryColor
                      : AppColors.layout,
                  height: 24.h,
                ),
                label: 'User',
              ),
            ],
          ),
        );
      },
    );
  }
}