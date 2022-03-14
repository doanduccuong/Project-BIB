import 'package:base_flutter/features/home_screen/cubit/home_screen_cutbit_states.dart';
import 'package:bloc/bloc.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit() : super(InitialState()) {
    goHomeScreen();
  }
   void goHomeScreen(){
    emit(MyProfileState());
  }
  void goInvestors(){
    emit(MyInvestorsState());
  }
}
