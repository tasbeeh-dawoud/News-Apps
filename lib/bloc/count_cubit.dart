import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_apps/bloc/count_states.dart';
class CountCubit extends Cubit<CountStates>{
  CountCubit () : super (CountInitState());
  static CountCubit get(context)=> BlocProvider.of(context);
  int count = 0;
  void inc (){
    count++;
    emit(CountChangeState());
  }

  void dec (){
    count--;
    emit(CountChangeDecState());
  }

}