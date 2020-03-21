import 'package:get_it/get_it.dart';
import 'package:nightoutapp/core/services/api.dart';
import 'package:nightoutapp/core/services/club_service.dart';
import 'package:nightoutapp/core/services/favorites.dart';
import 'package:nightoutapp/core/viewmodels/clublist_view_model.dart';
import 'package:nightoutapp/core/viewmodels/clubmap_view_model.dart';
import 'package:nightoutapp/core/viewmodels/user_view_model.dart';
import 'package:nightoutapp/core/viewmodels/widgets/likebutton_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => Api());
  locator.registerLazySingleton(() => MyDatabase());
  locator.registerLazySingleton(() => ClubService());

  locator.registerFactory(() => ClublistViewModel());
  locator.registerFactory(() => MapViewModel());
  locator.registerFactory(() => UserViewModel());
  locator.registerFactory(() => LikeButtonModel());
}
