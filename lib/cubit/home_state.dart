part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}
class Batata extends HomeState {}

class HomeChangeThemeState extends HomeState{}

class HomeGetBusinessDataLoading extends HomeState{}
class HomeGetBusinessDataSuss extends HomeState{}
class HomeGetBusinessDataError extends HomeState{}

class HomeGetScienceDataLoading extends HomeState{}
class HomeGetScienceDataSuss extends HomeState{}
class HomeGetScienceDataError extends HomeState{}

class HomeGetTechnologyDataLoading extends HomeState{}
class HomeGetTechnologyDataSuss extends HomeState{}
class HomeGetTechnologyDataError extends HomeState{}

class HomeGetStreamNumber extends HomeState{}

class HomeGetStreamSuss extends HomeState{}
class HomeGetStreamError extends HomeState{
  final String error ;
  HomeGetStreamError(this.error);
}


