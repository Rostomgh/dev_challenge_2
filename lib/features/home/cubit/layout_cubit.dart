import 'package:bloc/bloc.dart';
import 'package:dev_challenge_2/features/Search%20Screen/SearchScreen.dart';
import 'package:dev_challenge_2/features/home/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());
  List<Widget> pages = [
    HomeScreen(),
    SearchScreen(),
    // AddPostScreen(),
    // EventsScreen(),
    // ProfileScreen(),
  ];
  static LayoutCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;

  void changeLayout(int index, BuildContext context) {
    if (index != currentIndex) {
      currentIndex = index;
      emit(ChangeLayout());
    }
  }
}
