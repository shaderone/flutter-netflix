// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../bloc/downloads/downloads_bloc.dart' as _i7;
import '../../bloc/search/search_bloc.dart' as _i5;
import '../../infrastructure/pages/downloads/downloads_repository.dart' as _i4;
import '../pages/downloads/i_downloads_repo.dart' as _i3;
import '../pages/search/search_service.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IDownloadsRepo>(() => _i4.DownloadsRepository());
  gh.factory<_i5.SearchBloc>(() =>
      _i5.SearchBloc(get<_i3.IDownloadsRepo>(), get<_i6.SearchService>()));
  gh.factory<_i7.DownloadsBloc>(
      () => _i7.DownloadsBloc(get<_i3.IDownloadsRepo>()));
  return get;
}
