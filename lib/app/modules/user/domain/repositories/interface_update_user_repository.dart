import 'package:flutter/foundation.dart';

import '../entities/user.dart';

abstract class IUpdateUserRepository {
    
    Future<bool> updateUser({@required IUser user});
}
