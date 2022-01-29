import 'package:flutter/foundation.dart';

import '../entities/user.dart';
import '../repositories/interface_update_user_repository.dart';

// Interface to make easier tests
abstract class IUpdateUser {
    Future<bool> call({@required IUser user});
}

class UpdateUserImpl {

    IUpdateUserRepository _repository;

    UpdateUserImpl(this._repository);

    Future<bool> call({@required IUser user}) async {
        try {
            final response = await _repository.updateUser(user: user);
            return response;
        } catch(err) {
            rethrow;
        }
    }
}
