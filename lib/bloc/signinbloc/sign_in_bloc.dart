import 'package:bloc/bloc.dart';
import 'package:blocpracticeproj/Services/Auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInUser, SignInState> {
  final AuthService _authService;
  SignInBloc(this._authService) : super(SignInInitial())  {
    on<SignInUser>((event, emit) async{
      final res = await _authService.SigninWithEmailandPassword(
          email: event.email,
          password: event.Password);
      if(res is UserCredential){
        emit(SignInSuccess(res.toString()));
      }else{
        emit(SignInFail(res.toString()));
      }
    });
  }
}
