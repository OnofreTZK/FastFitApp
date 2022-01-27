import 'package:flutter/foundation.dart';

import '../entities/user.dart';
import '../repositories/interface_get_user_repository.dart';

// Interface to make easier tests
abstract class IGetUser {
    Future<IUser> call({@required String email})
}

class GetUserImpl {

    IGetUserRepository _repository;

    GetUserImpl(this._repository);

    Future<IUser> call({@required String email}) async {
        try {
            final response = await _repository.getUser(email: email);
            return response;
        } catch(err) {
            rethrow;
        }
    }
}
