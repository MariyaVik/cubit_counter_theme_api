import 'package:cubit_simple/api/repository/user_repository.dart';
import 'package:cubit_simple/cubit/api/api_cubit.dart';
import 'package:cubit_simple/cubit/counter/counter_cubit.dart';
import 'package:cubit_simple/cubit/theme/theme_cubit.dart';
import 'package:cubit_simple/ui/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
        BlocProvider(create: (context) => CounterCubit()),
        BlocProvider(create: (context) => ApiCubit(UserRepository())),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: state.theme,
            initialRoute: Navigation.initialRoute,
            onGenerateRoute: Navigation.onGenerateRoute,
          );
        },
      ),
    );
  }
}
