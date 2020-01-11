import 'package:flutter/foundation.dart';
import 'package:registro_argo/data/db/moor_database.dart';
import 'package:registro_argo/domain/entity/api_responses/login_response.dart';
import 'package:registro_argo/domain/entity/api_responses/user_info_response.dart';
import 'package:registro_argo/utils/converters/date_converters.dart';

class Mappers {
  static Profile convertApiLoginResponseAndUserInfoToProfile({
    @required String username,
    @required ApiLoginResponse apiLoginResponse,
    @required ApiUserInfoResponse userInfoResponse,
  }) {
    return Profile(
      id: null,
      schoolCode: userInfoResponse.codMin ?? '',
      username: username ?? '',
      active: true,
      name: userInfoResponse.alunno.desNome ?? '',
      surname: userInfoResponse.alunno.desCognome ?? '',
      token: apiLoginResponse.token ?? '',
      prgScuola: userInfoResponse.prgScuola ?? 0,
      prgAlunno: userInfoResponse.prgAlunno ?? 0,
      prgScheda: userInfoResponse.prgScheda ?? 0,
      prgClasse: userInfoResponse.prgClasse ?? 0,
      year: userInfoResponse.numAnno ?? DateTime.now().year,
      sex: userInfoResponse.alunno.flgSesso ?? 'X',
      school: userInfoResponse.desScuola ?? '',
      sede: userInfoResponse.desSede ?? '',
      classNumber: userInfoResponse.desDenominazione ?? '-1',
      classSezione: userInfoResponse.desCorso ?? 'X',
      schoolYearStart: DateConverters.getDateFromApiString(
          userInfoResponse.annoScolastico.datInizio) ?? DateTime.now(),
      schoolYearEnd: DateConverters.getDateFromApiString(
          userInfoResponse.annoScolastico.datFine) ?? DateTime.now(),
    );
  }
}
