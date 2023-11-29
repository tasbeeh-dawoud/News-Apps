import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_apps/const/const.dart';
import 'package:news_apps/http/http_helper.dart';
import 'package:news_apps/models/BitCoin.dart';

part 'stream_state.dart';

class StreamCubit extends Cubit<StreamState> {
  StreamCubit() : super(StreamInitial());
  static StreamCubit get(context)=>BlocProvider.of(context);
  int number = 0 ;

     BitCoin? bitCoin ;
     void getBitCoin()async{
     while(true){ //انفينتي لووب طول ما الشرط ترو يضل يجيب بيانات
     await Future.delayed(Duration(seconds: 2),()async{
       await HttpHelper.getDataFromApi(LINK: BITCOIN).then((value){
         bitCoin = BitCoin.fromJson(value);
         emit(StreamGetBitCoinSuss());

       }).catchError((onError){
         print(onError.toString());
         emit(StreamGetBitCoinError());
       });
     }); // حطيتها عشان ممكن يطلع عندي خطأ عشان اتفاداه
   }

  }


     void getStream()async{
      emit(StreamGetNumberStateLoading());
      for(int i = 0 ; i<=10 ; i++){
       if (i == 6){
         emit(StreamGetNumberStateError('Error From Api DataBase '));
         break;
       }
     print(i);
      await Future.delayed(Duration(seconds: 1),(){
        number = i ;
        emit(StreamGetNumberState());
      });
    }
  }
}
