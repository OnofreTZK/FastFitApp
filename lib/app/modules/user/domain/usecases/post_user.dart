import 'package:flutter/foundation.dart';

import '../entities/user.dart';
import '../repositories/interface_post_user_repository.dart';

// Interface to make easier tests
abstract class IGetUser {
    Future<bool> call({@required IUser user})
}

class PostUserImpl {

    IPostUserRepository _repository;

    PostUserImpl(this._repository);

    Future<bool> call({@required IUser user}) async {
        try {
            final response = await _repository.postUser(user: user);
            return response;
        } catch(err) {
            rethrow;
        }
    }
}
