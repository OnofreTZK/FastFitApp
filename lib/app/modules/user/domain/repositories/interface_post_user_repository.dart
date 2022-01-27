import 'package:flutter/foundation.dart';

import '../entities/user.dart';

abstract class IPostUserRepository {
    
    Future<bool> postUser({@required IUser user});
}
