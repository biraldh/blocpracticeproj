part of 'signup_bloc.dart';

@immutable
sealed class SignupState {}

final class SignupInitial extends SignupState {}


class SignUpSuccess extends SignupState{
  final String uid;
  SignUpSuccess(this.uid);
}
class SignUpFail extends SignupState{
  final String errmessage;
  SignUpFail(this.errmessage);

}

