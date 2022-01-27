import 'package:flutter/foundation.dart';

import '../entities/user.dart';

abstract class IGetUserRepository {
    
    Future<IUser> getUser({@required String email});
}

