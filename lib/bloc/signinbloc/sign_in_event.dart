part of 'sign_in_bloc.dart';

@immutable
sealed class SignInEvent {}

class SignInUser extends SignInEvent{
  final String email;
  final String Password;

  SignInUser({required this.email, required this.Password});
}