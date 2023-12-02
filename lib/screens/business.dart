import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_apps/component/my_component.dart';
import 'package:news_apps/cubit/home_cubit.dart';

class Business extends StatelessWidget {
  const Business({super.key});

  @override
  Widget build(BuildContext context) {
    HomeCubit homeCubit = HomeCubit.get(context);
    homeCubit.getBusinessNews();
    return BlocConsumer<HomeCubit , HomeState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              ConditionalBuilder(
            
                  condition: state is ! HomeGetBusinessDataLoading,
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
