import 'package:flutter/foundation.dart';

import '../entities/user.dart';
import '../repositories/interface_delete_user_repository.dart';

// Interface to make easier tests
abstract class IDeleteUser {
    Future<bool> call({@required String userId});
}

class DeleteUserImpl {

    IDeleteUserRepository _repository;

    DeleteUserImpl(this._repository);

    Future<bool> call({@required String userId}) async {
        try {
            final response = await _repository.deleteUser(userId: userId);
            return response;
        } catch(err) {
            rethrow;
        }
    }
}
