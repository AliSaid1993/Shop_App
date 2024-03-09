import 'package:flutter/cupertino.dart';

abstract class AuthRepo {
  Future loginWithGoogle();
  Future loginWithFacebook();
  Future completeInformation({@required name,@required phoneNumber,@required address});

}