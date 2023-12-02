import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../component/my_component.dart';
import '../cubit/home_cubit.dart';

class Science extends StatelessWidget {
  const Science({super.key});

  @override
  Widget build(BuildContext context) {
    HomeCubit homeCubit = HomeCubit.get(context);
    homeCubit.getSciencesNews();
     return BlocConsumer<HomeCubit , HomeState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              ConditionalBuilder(
                condition: state is ! HomeGetScienceDataLoading,
                builder: (context) => ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => MyComponent.bulidNews(context , homeCubit.models!.articles![index]),
                    separatorBuilder: (context, index) => const SizedBox(height: 20,),
                    itemCount: homeCubit.models!.articles!.length),
                fallback:(context) => const Center(child: LinearProgressIndicator()
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
