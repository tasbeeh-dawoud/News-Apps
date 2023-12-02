
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_apps/bloc/count_cubit.dart';
import 'package:news_apps/bloc/count_states.dart';

class Count extends StatelessWidget {
  const Count({super.key});

  @override
  Widget build(BuildContext context) {
    CountCubit cubit = CountCubit.get(context);
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocConsumer<CountCubit,CountStates>
                (
                listener: (context,state){},
                builder: (context , state){
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton
                        (onPressed: (){
                        cubit.inc();
                      }, child: const Text("+")),
                      const SizedBox(width: 30,),
                      Text("${cubit.count}"),
                      const SizedBox(width: 30,),

                      ElevatedButton
                        (onPressed: (){
                        cubit.dec();
                      }, child: const Text("-")),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
