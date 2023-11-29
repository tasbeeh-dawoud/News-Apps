import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../component/my_component.dart';
import '../cubit/home_cubit.dart';

class Technology extends StatelessWidget {
  const Technology({super.key});

  @override
  Widget build(BuildContext context) {
    HomeCubit homeCubit = HomeCubit.get(context);
    homeCubit.getTechnologyNews();
    return BlocConsumer<HomeCubit , HomeState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              ConditionalBuilder(
                // انا ببنيلك الصفحة بناءا على الشروط اللي انت بتحطها واذا ما تحقق الشرط بروح على الفل باك وبنفذ الاشي اللي حاطه فيه
                condition: state is ! HomeGetBusinessDataLoading,
                builder: (context) => ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => MyComponent.bulidNews(context , homeCubit.models!.articles![index]),
                    separatorBuilder: (context, index) => const SizedBox(height: 20,),
                    itemCount: homeCubit.models!.articles!.length),
                fallback:(context) => const Center(child: LinearProgressIndicator(),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
