part of 'sign_in_bloc.dart';

@immutable
sealed class SignInState {}

final class SignInInitial extends SignInState {}

class SignInSuccess extends SignInState{
  final String uid;
  SignInSuccess(this.uid);
}
class SignInFail extends SignInState{
  final String Errmessage;
  SignInFail(this.Errmessage);
}