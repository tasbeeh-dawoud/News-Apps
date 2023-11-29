import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:news_apps/cubit/home_cubit.dart';
import 'package:news_apps/cubit/stream_cubit.dart';

class HomeStream extends StatefulWidget {
  const HomeStream({super.key});

  @override
  State<HomeStream> createState() => _HomeStreamState();
}
 // Stream<int> getData()async*{
 //  // yield 1 ;
 //  // await Future.delayed(Duration(seconds: 1));
 //  // yield 2;
 //
 //   for (int i = 0; i<=10 ; i++){
 //     await Future.delayed(Duration(seconds: 1));
 //     if (i == 5){
 //       throw ("Errors");
 //     }
 //     yield i ;
 //   }
 //
 // }
class _HomeStreamState extends State<HomeStream> {
  @override
  Widget build(BuildContext context) {
    StreamCubit cubit = StreamCubit.get(context);
    cubit.getBitCoin();
   // cubit.getStream();
    return Scaffold(
      body: Center(
          child: BlocConsumer<StreamCubit,StreamState>(
            listener: (context, state) {
              if (state is StreamGetBitCoinSuss){
                print("Hi BitCoin");
              }
            },
            builder: (context, state) {
            return cubit.bitCoin!=null ? Text('${cubit.bitCoin!.data!.buy}' ,
                style: TextStyle(fontSize: 30,color: Colors.purple)):CircularProgressIndicator();
            },
          )



      ),
    );
  }
}

// StreamBuilder(
//     stream: getData() ,
//     builder: (context, snapshot) {
//         if(snapshot.hasData){
//           return Text('${snapshot.data}',style: TextStyle(fontSize: 30,color: Colors.cyan),);
//         }
//         else if (snapshot.hasError){
//           return Text('${snapshot.error}',style: TextStyle(fontSize: 30,color: Colors.deepOrange));
//         }
//         else {
//             return CircularProgressIndicator() ;
//         }
//     },
// ),