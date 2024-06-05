
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../Services/Auth_service.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final AuthService _authService;
  SignupBloc(this._authService) : super(SignupInitial()) {
    on<SignUpEvent>((event, emit) async{
      final res = await _authService.signupUserWithEmailAndPassword(
        name: event.name,
        email: event.email,
        password: event.password,
      );
      if (res is UserCredential) {
        emit(SignUpSuccess(res.user!.uid));
      } else {
        emit(SignUpFail(res.toString()));
      }




    });
  }
}
