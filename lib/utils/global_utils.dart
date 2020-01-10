import 'package:registro_argo/core/error/failures.dart';
import 'package:registro_argo/utils/constants/error_constants.dart';

class GlobalUtils {
  static int mapFailureToErrorCode(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return ErrorConsants.SERVER_FAILURE;
        break;
      case DatabaseFailure:
        return ErrorConsants.DATABASE_FAILURE;
      default:
        return ErrorConsants.GENERIC_ERROR;
    }
  }
}
