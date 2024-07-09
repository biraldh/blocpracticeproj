class LoginError {

  LoginFaliure(errorcode){
    switch(errorcode){
      case 'Connection failed':
        return 'No Internet connection';
      case 'Incorrect password':
        return 'Invalid credentials';
      case 'an error occured' :
        return 'please try again later';
      case 'invalid-email':
        return 'Invalid Email address';
      case 'Connection refused':
        return 'please try again later';
      default:
        return null;
    }
  }


}