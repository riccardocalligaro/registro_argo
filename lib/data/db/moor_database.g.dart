// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Profile extends DataClass implements Insertable<Profile> {
  final int id;
  final String schoolCode;
  final String username;
  final bool active;
  final String name;
  final String surname;
  final int prgScuola;
  final int prgScheda;
  final int prgAlunno;
  final int prgClasse;
  final int year;
  final String token;
  final String sex;
  final String school;
  final String sede;
  final String classNumber;
  final String classSezione;
  final DateTime schoolYearStart;
  final DateTime schoolYearEnd;
  Profile(
      {@required this.id,
      @required this.schoolCode,
      @required this.username,
      @required this.active,
      @required this.name,
      @required this.surname,
      @required this.prgScuola,
      @required this.prgScheda,
      @required this.prgAlunno,
      @required this.prgClasse,
      @required this.year,
      @required this.token,
      @required this.sex,
      @required this.school,
      @required this.sede,
      @required this.classNumber,
      @required this.classSezione,
      @required this.schoolYearStart,
      @required this.schoolYearEnd});
  factory Profile.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Profile(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      schoolCode: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}school_code']),
      username: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}username']),
      active:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}active']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      surname:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}surname']),
      prgScuola:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}prg_scuola']),
      prgScheda:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}prg_scheda']),
      prgAlunno:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}prg_alunno']),
      prgClasse:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}prg_classe']),
      year: intType.mapFromDatabaseResponse(data['${effectivePrefix}year']),
      token:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}token']),
      sex: stringType.mapFromDatabaseResponse(data['${effectivePrefix}sex']),
      school:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}school']),
      sede: stringType.mapFromDatabaseResponse(data['${effectivePrefix}sede']),
      classNumber: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}class_number']),
      classSezione: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}class_sezione']),
      schoolYearStart: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}school_year_start']),
      schoolYearEnd: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}school_year_end']),
    );
  }
  factory Profile.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Profile(
      id: serializer.fromJson<int>(json['id']),
      schoolCode: serializer.fromJson<String>(json['schoolCode']),
      username: serializer.fromJson<String>(json['username']),
      active: serializer.fromJson<bool>(json['active']),
      name: serializer.fromJson<String>(json['name']),
      surname: serializer.fromJson<String>(json['surname']),
      prgScuola: serializer.fromJson<int>(json['prgScuola']),
      prgScheda: serializer.fromJson<int>(json['prgScheda']),
      prgAlunno: serializer.fromJson<int>(json['prgAlunno']),
      prgClasse: serializer.fromJson<int>(json['prgClasse']),
      year: serializer.fromJson<int>(json['year']),
      token: serializer.fromJson<String>(json['token']),
      sex: serializer.fromJson<String>(json['sex']),
      school: serializer.fromJson<String>(json['school']),
      sede: serializer.fromJson<String>(json['sede']),
      classNumber: serializer.fromJson<String>(json['classNumber']),
      classSezione: serializer.fromJson<String>(json['classSezione']),
      schoolYearStart: serializer.fromJson<DateTime>(json['schoolYearStart']),
      schoolYearEnd: serializer.fromJson<DateTime>(json['schoolYearEnd']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'schoolCode': serializer.toJson<String>(schoolCode),
      'username': serializer.toJson<String>(username),
      'active': serializer.toJson<bool>(active),
      'name': serializer.toJson<String>(name),
      'surname': serializer.toJson<String>(surname),
      'prgScuola': serializer.toJson<int>(prgScuola),
      'prgScheda': serializer.toJson<int>(prgScheda),
      'prgAlunno': serializer.toJson<int>(prgAlunno),
      'prgClasse': serializer.toJson<int>(prgClasse),
      'year': serializer.toJson<int>(year),
      'token': serializer.toJson<String>(token),
      'sex': serializer.toJson<String>(sex),
      'school': serializer.toJson<String>(school),
      'sede': serializer.toJson<String>(sede),
      'classNumber': serializer.toJson<String>(classNumber),
      'classSezione': serializer.toJson<String>(classSezione),
      'schoolYearStart': serializer.toJson<DateTime>(schoolYearStart),
      'schoolYearEnd': serializer.toJson<DateTime>(schoolYearEnd),
    };
  }

  @override
  ProfilesCompanion createCompanion(bool nullToAbsent) {
    return ProfilesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      schoolCode: schoolCode == null && nullToAbsent
          ? const Value.absent()
          : Value(schoolCode),
      username: username == null && nullToAbsent
          ? const Value.absent()
          : Value(username),
      active:
          active == null && nullToAbsent ? const Value.absent() : Value(active),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      surname: surname == null && nullToAbsent
          ? const Value.absent()
          : Value(surname),
      prgScuola: prgScuola == null && nullToAbsent
          ? const Value.absent()
          : Value(prgScuola),
      prgScheda: prgScheda == null && nullToAbsent
          ? const Value.absent()
          : Value(prgScheda),
      prgAlunno: prgAlunno == null && nullToAbsent
          ? const Value.absent()
          : Value(prgAlunno),
      prgClasse: prgClasse == null && nullToAbsent
          ? const Value.absent()
          : Value(prgClasse),
      year: year == null && nullToAbsent ? const Value.absent() : Value(year),
      token:
          token == null && nullToAbsent ? const Value.absent() : Value(token),
      sex: sex == null && nullToAbsent ? const Value.absent() : Value(sex),
      school:
          school == null && nullToAbsent ? const Value.absent() : Value(school),
      sede: sede == null && nullToAbsent ? const Value.absent() : Value(sede),
      classNumber: classNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(classNumber),
      classSezione: classSezione == null && nullToAbsent
          ? const Value.absent()
          : Value(classSezione),
      schoolYearStart: schoolYearStart == null && nullToAbsent
          ? const Value.absent()
          : Value(schoolYearStart),
      schoolYearEnd: schoolYearEnd == null && nullToAbsent
          ? const Value.absent()
          : Value(schoolYearEnd),
    );
  }

  Profile copyWith(
          {int id,
          String schoolCode,
          String username,
          bool active,
          String name,
          String surname,
          int prgScuola,
          int prgScheda,
          int prgAlunno,
          int prgClasse,
          int year,
          String token,
          String sex,
          String school,
          String sede,
          String classNumber,
          String classSezione,
          DateTime schoolYearStart,
          DateTime schoolYearEnd}) =>
      Profile(
        id: id ?? this.id,
        schoolCode: schoolCode ?? this.schoolCode,
        username: username ?? this.username,
        active: active ?? this.active,
        name: name ?? this.name,
        surname: surname ?? this.surname,
        prgScuola: prgScuola ?? this.prgScuola,
        prgScheda: prgScheda ?? this.prgScheda,
        prgAlunno: prgAlunno ?? this.prgAlunno,
        prgClasse: prgClasse ?? this.prgClasse,
        year: year ?? this.year,
        token: token ?? this.token,
        sex: sex ?? this.sex,
        school: school ?? this.school,
        sede: sede ?? this.sede,
        classNumber: classNumber ?? this.classNumber,
        classSezione: classSezione ?? this.classSezione,
        schoolYearStart: schoolYearStart ?? this.schoolYearStart,
        schoolYearEnd: schoolYearEnd ?? this.schoolYearEnd,
      );
  @override
  String toString() {
    return (StringBuffer('Profile(')
          ..write('id: $id, ')
          ..write('schoolCode: $schoolCode, ')
          ..write('username: $username, ')
          ..write('active: $active, ')
          ..write('name: $name, ')
          ..write('surname: $surname, ')
          ..write('prgScuola: $prgScuola, ')
          ..write('prgScheda: $prgScheda, ')
          ..write('prgAlunno: $prgAlunno, ')
          ..write('prgClasse: $prgClasse, ')
          ..write('year: $year, ')
          ..write('token: $token, ')
          ..write('sex: $sex, ')
          ..write('school: $school, ')
          ..write('sede: $sede, ')
          ..write('classNumber: $classNumber, ')
          ..write('classSezione: $classSezione, ')
          ..write('schoolYearStart: $schoolYearStart, ')
          ..write('schoolYearEnd: $schoolYearEnd')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          schoolCode.hashCode,
          $mrjc(
              username.hashCode,
              $mrjc(
                  active.hashCode,
                  $mrjc(
                      name.hashCode,
                      $mrjc(
                          surname.hashCode,
                          $mrjc(
                              prgScuola.hashCode,
                              $mrjc(
                                  prgScheda.hashCode,
                                  $mrjc(
                                      prgAlunno.hashCode,
                                      $mrjc(
                                          prgClasse.hashCode,
                                          $mrjc(
                                              year.hashCode,
                                              $mrjc(
                                                  token.hashCode,
                                                  $mrjc(
                                                      sex.hashCode,
                                                      $mrjc(
                                                          school.hashCode,
                                                          $mrjc(
                                                              sede.hashCode,
                                                              $mrjc(
                                                                  classNumber
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      classSezione
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          schoolYearStart
                                                                              .hashCode,
                                                                          schoolYearEnd
                                                                              .hashCode)))))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Profile &&
          other.id == this.id &&
          other.schoolCode == this.schoolCode &&
          other.username == this.username &&
          other.active == this.active &&
          other.name == this.name &&
          other.surname == this.surname &&
          other.prgScuola == this.prgScuola &&
          other.prgScheda == this.prgScheda &&
          other.prgAlunno == this.prgAlunno &&
          other.prgClasse == this.prgClasse &&
          other.year == this.year &&
          other.token == this.token &&
          other.sex == this.sex &&
          other.school == this.school &&
          other.sede == this.sede &&
          other.classNumber == this.classNumber &&
          other.classSezione == this.classSezione &&
          other.schoolYearStart == this.schoolYearStart &&
          other.schoolYearEnd == this.schoolYearEnd);
}

class ProfilesCompanion extends UpdateCompanion<Profile> {
  final Value<int> id;
  final Value<String> schoolCode;
  final Value<String> username;
  final Value<bool> active;
  final Value<String> name;
  final Value<String> surname;
  final Value<int> prgScuola;
  final Value<int> prgScheda;
  final Value<int> prgAlunno;
  final Value<int> prgClasse;
  final Value<int> year;
  final Value<String> token;
  final Value<String> sex;
  final Value<String> school;
  final Value<String> sede;
  final Value<String> classNumber;
  final Value<String> classSezione;
  final Value<DateTime> schoolYearStart;
  final Value<DateTime> schoolYearEnd;
  const ProfilesCompanion({
    this.id = const Value.absent(),
    this.schoolCode = const Value.absent(),
    this.username = const Value.absent(),
    this.active = const Value.absent(),
    this.name = const Value.absent(),
    this.surname = const Value.absent(),
    this.prgScuola = const Value.absent(),
    this.prgScheda = const Value.absent(),
    this.prgAlunno = const Value.absent(),
    this.prgClasse = const Value.absent(),
    this.year = const Value.absent(),
    this.token = const Value.absent(),
    this.sex = const Value.absent(),
    this.school = const Value.absent(),
    this.sede = const Value.absent(),
    this.classNumber = const Value.absent(),
    this.classSezione = const Value.absent(),
    this.schoolYearStart = const Value.absent(),
    this.schoolYearEnd = const Value.absent(),
  });
  ProfilesCompanion.insert({
    this.id = const Value.absent(),
    @required String schoolCode,
    @required String username,
    @required bool active,
    @required String name,
    @required String surname,
    @required int prgScuola,
    @required int prgScheda,
    @required int prgAlunno,
    @required int prgClasse,
    @required int year,
    @required String token,
    @required String sex,
    @required String school,
    @required String sede,
    @required String classNumber,
    @required String classSezione,
    @required DateTime schoolYearStart,
    @required DateTime schoolYearEnd,
  })  : schoolCode = Value(schoolCode),
        username = Value(username),
        active = Value(active),
        name = Value(name),
        surname = Value(surname),
        prgScuola = Value(prgScuola),
        prgScheda = Value(prgScheda),
        prgAlunno = Value(prgAlunno),
        prgClasse = Value(prgClasse),
        year = Value(year),
        token = Value(token),
        sex = Value(sex),
        school = Value(school),
        sede = Value(sede),
        classNumber = Value(classNumber),
        classSezione = Value(classSezione),
        schoolYearStart = Value(schoolYearStart),
        schoolYearEnd = Value(schoolYearEnd);
  ProfilesCompanion copyWith(
      {Value<int> id,
      Value<String> schoolCode,
      Value<String> username,
      Value<bool> active,
      Value<String> name,
      Value<String> surname,
      Value<int> prgScuola,
      Value<int> prgScheda,
      Value<int> prgAlunno,
      Value<int> prgClasse,
      Value<int> year,
      Value<String> token,
      Value<String> sex,
      Value<String> school,
      Value<String> sede,
      Value<String> classNumber,
      Value<String> classSezione,
      Value<DateTime> schoolYearStart,
      Value<DateTime> schoolYearEnd}) {
    return ProfilesCompanion(
      id: id ?? this.id,
      schoolCode: schoolCode ?? this.schoolCode,
      username: username ?? this.username,
      active: active ?? this.active,
      name: name ?? this.name,
      surname: surname ?? this.surname,
      prgScuola: prgScuola ?? this.prgScuola,
      prgScheda: prgScheda ?? this.prgScheda,
      prgAlunno: prgAlunno ?? this.prgAlunno,
      prgClasse: prgClasse ?? this.prgClasse,
      year: year ?? this.year,
      token: token ?? this.token,
      sex: sex ?? this.sex,
      school: school ?? this.school,
      sede: sede ?? this.sede,
      classNumber: classNumber ?? this.classNumber,
      classSezione: classSezione ?? this.classSezione,
      schoolYearStart: schoolYearStart ?? this.schoolYearStart,
      schoolYearEnd: schoolYearEnd ?? this.schoolYearEnd,
    );
  }
}

class $ProfilesTable extends Profiles with TableInfo<$ProfilesTable, Profile> {
  final GeneratedDatabase _db;
  final String _alias;
  $ProfilesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _schoolCodeMeta = const VerificationMeta('schoolCode');
  GeneratedTextColumn _schoolCode;
  @override
  GeneratedTextColumn get schoolCode => _schoolCode ??= _constructSchoolCode();
  GeneratedTextColumn _constructSchoolCode() {
    return GeneratedTextColumn(
      'school_code',
      $tableName,
      false,
    );
  }

  final VerificationMeta _usernameMeta = const VerificationMeta('username');
  GeneratedTextColumn _username;
  @override
  GeneratedTextColumn get username => _username ??= _constructUsername();
  GeneratedTextColumn _constructUsername() {
    return GeneratedTextColumn(
      'username',
      $tableName,
      false,
    );
  }

  final VerificationMeta _activeMeta = const VerificationMeta('active');
  GeneratedBoolColumn _active;
  @override
  GeneratedBoolColumn get active => _active ??= _constructActive();
  GeneratedBoolColumn _constructActive() {
    return GeneratedBoolColumn(
      'active',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _surnameMeta = const VerificationMeta('surname');
  GeneratedTextColumn _surname;
  @override
  GeneratedTextColumn get surname => _surname ??= _constructSurname();
  GeneratedTextColumn _constructSurname() {
    return GeneratedTextColumn(
      'surname',
      $tableName,
      false,
    );
  }

  final VerificationMeta _prgScuolaMeta = const VerificationMeta('prgScuola');
  GeneratedIntColumn _prgScuola;
  @override
  GeneratedIntColumn get prgScuola => _prgScuola ??= _constructPrgScuola();
  GeneratedIntColumn _constructPrgScuola() {
    return GeneratedIntColumn(
      'prg_scuola',
      $tableName,
      false,
    );
  }

  final VerificationMeta _prgSchedaMeta = const VerificationMeta('prgScheda');
  GeneratedIntColumn _prgScheda;
  @override
  GeneratedIntColumn get prgScheda => _prgScheda ??= _constructPrgScheda();
  GeneratedIntColumn _constructPrgScheda() {
    return GeneratedIntColumn(
      'prg_scheda',
      $tableName,
      false,
    );
  }

  final VerificationMeta _prgAlunnoMeta = const VerificationMeta('prgAlunno');
  GeneratedIntColumn _prgAlunno;
  @override
  GeneratedIntColumn get prgAlunno => _prgAlunno ??= _constructPrgAlunno();
  GeneratedIntColumn _constructPrgAlunno() {
    return GeneratedIntColumn(
      'prg_alunno',
      $tableName,
      false,
    );
  }

  final VerificationMeta _prgClasseMeta = const VerificationMeta('prgClasse');
  GeneratedIntColumn _prgClasse;
  @override
  GeneratedIntColumn get prgClasse => _prgClasse ??= _constructPrgClasse();
  GeneratedIntColumn _constructPrgClasse() {
    return GeneratedIntColumn(
      'prg_classe',
      $tableName,
      false,
    );
  }

  final VerificationMeta _yearMeta = const VerificationMeta('year');
  GeneratedIntColumn _year;
  @override
  GeneratedIntColumn get year => _year ??= _constructYear();
  GeneratedIntColumn _constructYear() {
    return GeneratedIntColumn(
      'year',
      $tableName,
      false,
    );
  }

  final VerificationMeta _tokenMeta = const VerificationMeta('token');
  GeneratedTextColumn _token;
  @override
  GeneratedTextColumn get token => _token ??= _constructToken();
  GeneratedTextColumn _constructToken() {
    return GeneratedTextColumn(
      'token',
      $tableName,
      false,
    );
  }

  final VerificationMeta _sexMeta = const VerificationMeta('sex');
  GeneratedTextColumn _sex;
  @override
  GeneratedTextColumn get sex => _sex ??= _constructSex();
  GeneratedTextColumn _constructSex() {
    return GeneratedTextColumn(
      'sex',
      $tableName,
      false,
    );
  }

  final VerificationMeta _schoolMeta = const VerificationMeta('school');
  GeneratedTextColumn _school;
  @override
  GeneratedTextColumn get school => _school ??= _constructSchool();
  GeneratedTextColumn _constructSchool() {
    return GeneratedTextColumn(
      'school',
      $tableName,
      false,
    );
  }

  final VerificationMeta _sedeMeta = const VerificationMeta('sede');
  GeneratedTextColumn _sede;
  @override
  GeneratedTextColumn get sede => _sede ??= _constructSede();
  GeneratedTextColumn _constructSede() {
    return GeneratedTextColumn(
      'sede',
      $tableName,
      false,
    );
  }

  final VerificationMeta _classNumberMeta =
      const VerificationMeta('classNumber');
  GeneratedTextColumn _classNumber;
  @override
  GeneratedTextColumn get classNumber =>
      _classNumber ??= _constructClassNumber();
  GeneratedTextColumn _constructClassNumber() {
    return GeneratedTextColumn(
      'class_number',
      $tableName,
      false,
    );
  }

  final VerificationMeta _classSezioneMeta =
      const VerificationMeta('classSezione');
  GeneratedTextColumn _classSezione;
  @override
  GeneratedTextColumn get classSezione =>
      _classSezione ??= _constructClassSezione();
  GeneratedTextColumn _constructClassSezione() {
    return GeneratedTextColumn(
      'class_sezione',
      $tableName,
      false,
    );
  }

  final VerificationMeta _schoolYearStartMeta =
      const VerificationMeta('schoolYearStart');
  GeneratedDateTimeColumn _schoolYearStart;
  @override
  GeneratedDateTimeColumn get schoolYearStart =>
      _schoolYearStart ??= _constructSchoolYearStart();
  GeneratedDateTimeColumn _constructSchoolYearStart() {
    return GeneratedDateTimeColumn(
      'school_year_start',
      $tableName,
      false,
    );
  }

  final VerificationMeta _schoolYearEndMeta =
      const VerificationMeta('schoolYearEnd');
  GeneratedDateTimeColumn _schoolYearEnd;
  @override
  GeneratedDateTimeColumn get schoolYearEnd =>
      _schoolYearEnd ??= _constructSchoolYearEnd();
  GeneratedDateTimeColumn _constructSchoolYearEnd() {
    return GeneratedDateTimeColumn(
      'school_year_end',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        schoolCode,
        username,
        active,
        name,
        surname,
        prgScuola,
        prgScheda,
        prgAlunno,
        prgClasse,
        year,
        token,
        sex,
        school,
        sede,
        classNumber,
        classSezione,
        schoolYearStart,
        schoolYearEnd
      ];
  @override
  $ProfilesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'profiles';
  @override
  final String actualTableName = 'profiles';
  @override
  VerificationContext validateIntegrity(ProfilesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.schoolCode.present) {
      context.handle(_schoolCodeMeta,
          schoolCode.isAcceptableValue(d.schoolCode.value, _schoolCodeMeta));
    } else if (schoolCode.isRequired && isInserting) {
      context.missing(_schoolCodeMeta);
    }
    if (d.username.present) {
      context.handle(_usernameMeta,
          username.isAcceptableValue(d.username.value, _usernameMeta));
    } else if (username.isRequired && isInserting) {
      context.missing(_usernameMeta);
    }
    if (d.active.present) {
      context.handle(
          _activeMeta, active.isAcceptableValue(d.active.value, _activeMeta));
    } else if (active.isRequired && isInserting) {
      context.missing(_activeMeta);
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (name.isRequired && isInserting) {
      context.missing(_nameMeta);
    }
    if (d.surname.present) {
      context.handle(_surnameMeta,
          surname.isAcceptableValue(d.surname.value, _surnameMeta));
    } else if (surname.isRequired && isInserting) {
      context.missing(_surnameMeta);
    }
    if (d.prgScuola.present) {
      context.handle(_prgScuolaMeta,
          prgScuola.isAcceptableValue(d.prgScuola.value, _prgScuolaMeta));
    } else if (prgScuola.isRequired && isInserting) {
      context.missing(_prgScuolaMeta);
    }
    if (d.prgScheda.present) {
      context.handle(_prgSchedaMeta,
          prgScheda.isAcceptableValue(d.prgScheda.value, _prgSchedaMeta));
    } else if (prgScheda.isRequired && isInserting) {
      context.missing(_prgSchedaMeta);
    }
    if (d.prgAlunno.present) {
      context.handle(_prgAlunnoMeta,
          prgAlunno.isAcceptableValue(d.prgAlunno.value, _prgAlunnoMeta));
    } else if (prgAlunno.isRequired && isInserting) {
      context.missing(_prgAlunnoMeta);
    }
    if (d.prgClasse.present) {
      context.handle(_prgClasseMeta,
          prgClasse.isAcceptableValue(d.prgClasse.value, _prgClasseMeta));
    } else if (prgClasse.isRequired && isInserting) {
      context.missing(_prgClasseMeta);
    }
    if (d.year.present) {
      context.handle(
          _yearMeta, year.isAcceptableValue(d.year.value, _yearMeta));
    } else if (year.isRequired && isInserting) {
      context.missing(_yearMeta);
    }
    if (d.token.present) {
      context.handle(
          _tokenMeta, token.isAcceptableValue(d.token.value, _tokenMeta));
    } else if (token.isRequired && isInserting) {
      context.missing(_tokenMeta);
    }
    if (d.sex.present) {
      context.handle(_sexMeta, sex.isAcceptableValue(d.sex.value, _sexMeta));
    } else if (sex.isRequired && isInserting) {
      context.missing(_sexMeta);
    }
    if (d.school.present) {
      context.handle(
          _schoolMeta, school.isAcceptableValue(d.school.value, _schoolMeta));
    } else if (school.isRequired && isInserting) {
      context.missing(_schoolMeta);
    }
    if (d.sede.present) {
      context.handle(
          _sedeMeta, sede.isAcceptableValue(d.sede.value, _sedeMeta));
    } else if (sede.isRequired && isInserting) {
      context.missing(_sedeMeta);
    }
    if (d.classNumber.present) {
      context.handle(_classNumberMeta,
          classNumber.isAcceptableValue(d.classNumber.value, _classNumberMeta));
    } else if (classNumber.isRequired && isInserting) {
      context.missing(_classNumberMeta);
    }
    if (d.classSezione.present) {
      context.handle(
          _classSezioneMeta,
          classSezione.isAcceptableValue(
              d.classSezione.value, _classSezioneMeta));
    } else if (classSezione.isRequired && isInserting) {
      context.missing(_classSezioneMeta);
    }
    if (d.schoolYearStart.present) {
      context.handle(
          _schoolYearStartMeta,
          schoolYearStart.isAcceptableValue(
              d.schoolYearStart.value, _schoolYearStartMeta));
    } else if (schoolYearStart.isRequired && isInserting) {
      context.missing(_schoolYearStartMeta);
    }
    if (d.schoolYearEnd.present) {
      context.handle(
          _schoolYearEndMeta,
          schoolYearEnd.isAcceptableValue(
              d.schoolYearEnd.value, _schoolYearEndMeta));
    } else if (schoolYearEnd.isRequired && isInserting) {
      context.missing(_schoolYearEndMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id, prgAlunno};
  @override
  Profile map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Profile.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ProfilesCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.schoolCode.present) {
      map['school_code'] = Variable<String, StringType>(d.schoolCode.value);
    }
    if (d.username.present) {
      map['username'] = Variable<String, StringType>(d.username.value);
    }
    if (d.active.present) {
      map['active'] = Variable<bool, BoolType>(d.active.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    if (d.surname.present) {
      map['surname'] = Variable<String, StringType>(d.surname.value);
    }
    if (d.prgScuola.present) {
      map['prg_scuola'] = Variable<int, IntType>(d.prgScuola.value);
    }
    if (d.prgScheda.present) {
      map['prg_scheda'] = Variable<int, IntType>(d.prgScheda.value);
    }
    if (d.prgAlunno.present) {
      map['prg_alunno'] = Variable<int, IntType>(d.prgAlunno.value);
    }
    if (d.prgClasse.present) {
      map['prg_classe'] = Variable<int, IntType>(d.prgClasse.value);
    }
    if (d.year.present) {
      map['year'] = Variable<int, IntType>(d.year.value);
    }
    if (d.token.present) {
      map['token'] = Variable<String, StringType>(d.token.value);
    }
    if (d.sex.present) {
      map['sex'] = Variable<String, StringType>(d.sex.value);
    }
    if (d.school.present) {
      map['school'] = Variable<String, StringType>(d.school.value);
    }
    if (d.sede.present) {
      map['sede'] = Variable<String, StringType>(d.sede.value);
    }
    if (d.classNumber.present) {
      map['class_number'] = Variable<String, StringType>(d.classNumber.value);
    }
    if (d.classSezione.present) {
      map['class_sezione'] = Variable<String, StringType>(d.classSezione.value);
    }
    if (d.schoolYearStart.present) {
      map['school_year_start'] =
          Variable<DateTime, DateTimeType>(d.schoolYearStart.value);
    }
    if (d.schoolYearEnd.present) {
      map['school_year_end'] =
          Variable<DateTime, DateTimeType>(d.schoolYearEnd.value);
    }
    return map;
  }

  @override
  $ProfilesTable createAlias(String alias) {
    return $ProfilesTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ProfilesTable _profiles;
  $ProfilesTable get profiles => _profiles ??= $ProfilesTable(this);
  ProfileDao _profileDao;
  ProfileDao get profileDao => _profileDao ??= ProfileDao(this as AppDatabase);
  @override
  List<TableInfo> get allTables => [profiles];
}
