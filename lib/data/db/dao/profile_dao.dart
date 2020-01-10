import 'package:moor_flutter/moor_flutter.dart';
import 'package:registro_argo/data/db/moor_database.dart';
import 'package:registro_argo/data/db/table/profile_table.dart';

part 'profile_dao.g.dart';

@UseDao(tables: [Profiles])
class ProfileDao extends DatabaseAccessor<AppDatabase> with _$ProfileDaoMixin {
  AppDatabase db;

  ProfileDao(this.db) : super(db);

  /// Sets the [active] value on that profile to `false`
  Future logOutProfile(Profile profile) {
    //! to test TODO: test the log out
    return (update(profiles).write(ProfilesCompanion(active: Value(false))));
    //return (update(profiles)..where((p) => p.id.equals(profile.id))).write(entity)
  }

  /// Gets the profile that is currently [active]
  /// Active means that is logged in and is used by the user
  /// Returns `null` if now profiles are found
  Future<Profile> getLoggedInProfile() {
    return (select(profiles)..where((profile) => profile.active)).getSingle();
  }

  /// Erases all the data in the [profiles] table
  Future deleteAllProfiles() => delete(profiles).go();

  /// Deletes the [profile] from the app db
  Future deleteProfile(Profile profile) => delete(profiles).delete(profile);

  /// Inserts a [single profile entity]
  /// In case on conflict it replaces it
  ///   - [id, prgAlunno]
  Future insertProfile(Profile profile) =>
      into(profiles).insert(profile, orReplace: true);
}
