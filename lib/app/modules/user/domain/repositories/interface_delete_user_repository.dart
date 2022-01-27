import 'package:flutter/foundation.dart';

import '../entities/user.dart';

abstract class IDeleteUserRepository {
    
    Future<bool> deleteUser({@required String userId});
}
