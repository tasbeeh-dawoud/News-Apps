
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_apps/cubit/home_cubit.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeCubit homeCubit = HomeCubit.get(context);
    return BlocConsumer <HomeCubit , HomeState>(
      listener: (context, state) {


      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            scrolledUnderElevation: 0,
            title: Text("News",
              style:GoogleFonts.almarai(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Theme.of(context).colorScheme.primary,
              ),),
          ),
          body: homeCubit.myScreen[homeCubit.currenIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            currentIndex: homeCubit.currenIndex ,
            onTap: (index){
              homeCubit.changeNavBar(index);
            },
            items: const [

              BottomNavigationBarItem(icon: Icon(Icons.business_sharp,), label: "Business" ,),
              BottomNavigationBarItem(icon: Icon(Icons.science_rounded,), label: "Science" ,),
              BottomNavigationBarItem(icon: Icon(Icons.rocket_launch,), label: "Technology" ,),
              BottomNavigationBarItem(icon: Icon(Icons.settings,), label: "Settings" ,),


            ],
          ),
        );
      },
    );






  }
}
