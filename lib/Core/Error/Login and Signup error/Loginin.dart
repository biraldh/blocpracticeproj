class LoginError {

  LoginFaliure(errorcode){
    switch(errorcode){
      case 'network-request-failed':
        return 'No Internet connection';
      case  'invalid-credential':
        return 'Invalid credentials';
      case 'an error occured' :
        return 'please try again later';
      case 'invalid-email':
        return 'Invalid Email address';
      default:
        return null;
    }
  }


}