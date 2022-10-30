import 'package:cubit_simple/cubit/api/api_cubit.dart';
import 'package:cubit_simple/cubit/counter/counter_cubit.dart';
import 'package:cubit_simple/cubit/theme/theme_cubit.dart';
import 'package:cubit_simple/ui/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
              onPressed: context.read<ThemeCubit>().changeTheme,
              icon: Icon(context.read<ThemeCubit>().isDark
                  ? Icons.sunny
                  : Icons.nightlight_round)),
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(NavRouteName.users);
              },
              icon: Icon(Icons.people))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                return Text(
                  '$state',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: context.read<CounterCubit>().decrement,
                  child: const Icon(Icons.remove),
                ),
                ElevatedButton(
                  onPressed: context.read<CounterCubit>().increment,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
