
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_apps/bloc/count_cubit.dart';
import 'package:news_apps/cubit/home_cubit.dart';
import 'package:news_apps/cubit/stream_cubit.dart';
import 'package:news_apps/screens/home.dart';
import 'package:news_apps/screens/image.dart';
import 'package:news_apps/screens/stream.dart';
import 'package:news_apps/screens/test.dart';
import 'package:news_apps/theme/my_theme.dart';

import 'screens/stream2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CountCubit(),),
        BlocProvider(create: (context) => HomeCubit()..getBusinessNews(),),
        BlocProvider(create: (context) => StreamCubit()..getStream()),
      ],
      child: BlocConsumer<HomeCubit,HomeState>(
        listener: (context, state) => {} ,
        builder: (context, state) {
          HomeCubit homeCubit = HomeCubit.get(context);
         return MaterialApp(
            title: 'Flutter Demo',
            theme: homeCubit.isDark? MyTheme.darkTheme : MyTheme.lightTheme,
            debugShowCheckedModeBanner: false,
            // home: const Count(),
            // home: const Home(),
            // home: HomeStream(),
             home: HomeStream2(),
          );
        },
      )

    );
  }
}

