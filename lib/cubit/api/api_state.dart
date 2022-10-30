part of 'api_cubit.dart';

@immutable
abstract class ApiState {}

class ApiLoading extends ApiState {}

class ApiError extends ApiState {
  final String errorMessage;
  ApiError({required this.errorMessage});
}

class ApiSuccess extends ApiState {
  final List<User> users;
  ApiSuccess({required this.users});
}
