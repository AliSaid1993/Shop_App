import 'package:shop_app/features/Auth/domain/repositories/auth_repo.dart';

class AuthRepoImpl extends AuthRepo{
  @override
  Future completeInformation({name, phoneNumber, address}) {
    throw UnimplementedError();
  }

  @override
  Future loginWithFacebook() {
    throw UnimplementedError();
  }

  @override
  Future loginWithGoogle() {
    throw UnimplementedError();
  }

}