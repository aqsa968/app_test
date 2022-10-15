import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:tmdb_api/tmdb_api.dart';

class WatchViewModel extends GetxController {
  List moviesList = [];
  final String apiKey = 'f20ce291ef824e3ea611f88303f64717';
  final readAccessToken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmMjBjZTI5MWVmODI0ZTNlYTYxMWY4ODMwM2Y2NDcxNyIsInN1YiI6IjYzNGE3OGQ2ZTI2M2JiMDA5YzRmMzkxNCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.hAWTvLiLE7jY45ke98Ak9bP3wCsAuFi7DO4J9PgOLGo';

  @override
  void onInit() {
    loadUpcomingMovies();
  }

  loadUpcomingMovies() async {
    final tmdbWithCustomLogs = TMDB(
      ApiKeys(apiKey, readAccessToken),
      logConfig: ConfigLogger(
        showLogs: true,
        showErrorLogs: true,
      ),
    );
    Map result = await tmdbWithCustomLogs.v3.movies.getUpcoming();
    moviesList = result['results'];
    print(moviesList);
  }
}
