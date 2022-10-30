import 'package:bloc/bloc.dart';
import 'package:cubit_simple/api/models/user.dart';
import 'package:cubit_simple/api/repository/user_repository.dart';
import 'package:meta/meta.dart';

part 'api_state.dart';

class ApiCubit extends Cubit<ApiState> {
  ApiCubit(this._userRepository) : super(ApiLoading());
  final UserRepository _userRepository;

  Future<void> fetchUsers() async {
    emit(ApiLoading());
    try {
      final response = await _userRepository.getAllUsers();
      emit(ApiSuccess(users: response));
    } catch (e) {
      emit(ApiError(errorMessage: e.toString()));
    }
  }
}
