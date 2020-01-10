import 'package:moor_flutter/moor_flutter.dart';

class Profiles extends Table {
  IntColumn get id => integer().autoIncrement()();

  /// `s10010ss` scool code used to access argo
  TextColumn get schoolCode => text()();

  /// `username` username used to access argo
  TextColumn get username => text()();

  /// `true` if this profile is currently logged in
  BoolColumn get active => boolean()();

  /// `john` user name
  TextColumn get name => text()();

  TextColumn get surname => text()();

  /// `x-auth-token` token used to access argo
  TextColumn get token => text()();

  IntColumn get prgScuola => integer()();
  IntColumn get prgScheda => integer()();
  IntColumn get prgAlunno => integer()();
  IntColumn get prgClasse => integer()();
  IntColumn get year => integer()();

  /// `M` or `F`
  TextColumn get sex => text()();

  /// `Liceo Scientifico John Doe`
  TextColumn get school => text()();
  TextColumn get sede => text()();

  /// `4` user current class
  TextColumn get classNumber => text()();

  /// `B` class section (4 B)
  TextColumn get classSezione => text()();
  DateTimeColumn get schoolYearStart => dateTime()();
  DateTimeColumn get schoolYearEnd => dateTime()();

  @override
  Set<Column> get primaryKey => {id, prgAlunno};
}
