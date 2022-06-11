import 'package:permission_handler/permission_handler.dart';
import '../../application/permissions/premession_facade.dart';

class PermissionChecker extends PremissionFacade {
  @override
  Future<bool> microphone() async {
    const Permission p = Permission.microphone;
    late final PermissionStatus status;
    if (await p.isGranted) {
      return true;
    } else {
      status = await p.request();
    }

    return status.isGranted;
  }

  @override
  Future<bool> storage() async {
    const Permission p = Permission.storage;
    late final PermissionStatus status;
    if (await p.isGranted) {
      return true;
    } else {
      status = await p.request();
    }

    return status.isGranted;
  }
}
