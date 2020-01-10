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
      schoolCode: userInfoResponse.codMin,
      username: username,
      active: true,
      name: userInfoResponse.alunno.desNome,
      surname: userInfoResponse.alunno.desCognome,
      token: apiLoginResponse.token,
      prgScuola: userInfoResponse.prgScuola,
      prgAlunno: userInfoResponse.prgAlunno,
      prgScheda: userInfoResponse.prgScheda,
      prgClasse: userInfoResponse.prgClasse,
      year: userInfoResponse.numAnno,
      sex: userInfoResponse.alunno.flgSesso,
      school: userInfoResponse.desScuola,
      sede: userInfoResponse.desSede,
      classNumber: userInfoResponse.desDenominazione,
      classSezione: userInfoResponse.desCorso,
      schoolYearStart: DateConverters.getDateFromApiString(
          userInfoResponse.annoScolastico.datInizio),
      schoolYearEnd: DateConverters.getDateFromApiString(
          userInfoResponse.annoScolastico.datFine),
    );
  }
}
