import 'package:cubit_simple/cubit/api/api_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ApiCubit>().fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<ApiCubit, ApiState>(builder: (context, state) {
        if (state is ApiLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ApiError) {
          return Center(child: Text(state.errorMessage));
        } else if (state is ApiSuccess) {
          return ListView.builder(
            itemBuilder: ((context, index) {
              return ListTile(title: Text(state.users[index].name));
            }),
            itemCount: state.users.length,
          );
        } else {
          return const Center(
            child: Text('ничего не понял'),
          );
        }
      }),
    );
  }
}
