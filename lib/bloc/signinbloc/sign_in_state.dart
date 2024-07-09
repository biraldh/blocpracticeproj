part of 'sign_in_bloc.dart';

@immutable
sealed class SignInState {}

final class SignInInitial extends SignInState {}

class SignInSuccess extends SignInState{
  final String? user;
  final Token? token;
  SignInSuccess(this.user, this.token);
}
class SignInFail extends SignInState{
  final String Errmessage;
  SignInFail(this.Errmessage);
}