import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_apps/cubit/home_cubit.dart';
import 'package:news_apps/cubit/stream_cubit.dart';

class HomeStream2 extends StatelessWidget {
  const HomeStream2({super.key});

  @override
  Widget build(BuildContext context) {
    StreamCubit cubit = StreamCubit.get(context);

    return BlocConsumer <StreamCubit , StreamState>(
      listener: (context, state) {
        if(state is StreamGetNumberStateError){
          print("Error Is :- ${state.error}");
        }

      },
      builder: (context, state) {

        return Scaffold(
          body: Center(
            child: state is StreamGetNumberStateLoading ? CircularProgressIndicator() :
            state is StreamGetNumberStateError ? Text('${state.error}',style: TextStyle(fontSize: 30 , color: Colors.red),)
           :Text('${cubit.number}',style: TextStyle(fontSize: 30 , color: Colors.blue))

          ),
        );
      },
    );
  }
}
