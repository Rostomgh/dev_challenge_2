import 'package:dev_challenge_2/Logo.dart';
import 'package:dev_challenge_2/core/Router/OngenerateRoute.dart';
import 'package:dev_challenge_2/features/home/cubit/layout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          builder: (_, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData.light(useMaterial3: true),
              home: LogoS(),
              onGenerateRoute: (settings) =>
                  AppRoute().ongenerateRoute(settings),
            );
          }),
    );
  }
}
