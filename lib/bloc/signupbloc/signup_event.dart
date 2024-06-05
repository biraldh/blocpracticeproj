part of 'signup_bloc.dart';

@immutable
sealed class SignupEvent {}

class SignUpEvent extends SignupEvent{
  final String name;
  final String email;
  final String password;

  SignUpEvent({
    required this.name,
    required this.email,
    required this.password
  });
}
