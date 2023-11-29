

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_apps/const/const.dart';
import 'package:news_apps/http/http_helper.dart';
import 'package:news_apps/models/news_models.dart';
import 'package:news_apps/screens/business.dart';
import 'package:news_apps/screens/science.dart';
import 'package:news_apps/screens/settings.dart';
import 'package:news_apps/screens/techonology.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);
   NewsModels? models;
   bool isDark = false ;
  int currenIndex = 0;


   int number = 0;
      void getStream()async{
      for  (int i =0; i<=10 ; i++){
      number = i ;
      emit(HomeGetStreamNumber());
       Future.delayed(Duration(seconds: 1)).then((value){
        if(i == 6){
          emit(HomeGetStreamError("Error"));

        }
       emit(HomeGetStreamSuss());
      }).catchError((onError){
        emit(HomeGetStreamError(onError.toString()));
      });

    }

  }
















  void changeTheme (){
    isDark = !isDark;
    emit(HomeChangeThemeState());
  }
  void changeNavBar(int index){
    currenIndex = index;

    emit(Batata());

  }
  List<Widget> myScreen = [
    const Business(),
    const Science(),
    const Technology(),
    const Settings(),
  ];

  void getBusinessNews() async{
    emit(HomeGetBusinessDataLoading());
    await HttpHelper.getDataFromApi(LINK: BusinessUrl )
        .then((value)
    {
     models = NewsModels.fromJson(value);
        print(value);
       emit(HomeGetBusinessDataSuss());
    }).catchError((onError){
      print(onError.toString());
      emit(HomeGetBusinessDataError());

    });
  }

  void getSciencesNews() async{
    emit(HomeGetScienceDataLoading());
    await HttpHelper.getDataFromApi(LINK: ScienceUrl )
        .then((value)
    {
      models = NewsModels.fromJson(value);
      print(value);
      emit(HomeGetScienceDataSuss());

    }).catchError((onError){
      print(onError.toString());
      emit(HomeGetScienceDataError());

    });
  }

  void getTechnologyNews() async{
    emit(HomeGetScienceDataLoading());
    await HttpHelper.getDataFromApi(LINK: TechnologyUrl )
        .then((value)
    {
      models = NewsModels.fromJson(value);
      print(value);
      emit(HomeGetTechnologyDataSuss());

    }).catchError((onError){
      print(onError.toString());
      emit(HomeGetTechnologyDataError());

    });
  }


}
