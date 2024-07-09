
import 'package:bloc/bloc.dart';
import 'package:blocpracticeproj/Model/LoginModel.dart';
import 'package:blocpracticeproj/Services/Auth_service.dart';
import 'package:meta/meta.dart';

import '../../Model/UserModel.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInUser, SignInState> {
  final AuthService _authService;
  SignInBloc(this._authService) : super(SignInInitial()) {
    on<SignInUser>((event, emit) async {
      UserModel user = UserModel(email: event.email, password: event.Password);
      try {
        final res = await _authService.signinWithEmailAndPassword(user);
        if (res is LoginModel) {
          emit(SignInSuccess(res.user, res.token));
        } else {

          emit(SignInFail(res.toString()));
        }
      } catch (e) {
        emit(SignInFail("Error: $e"));
      }
    });
  }
}

