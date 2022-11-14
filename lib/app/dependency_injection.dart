import 'package:country_app/domain/usecase/africa_usecase.dart';
import 'package:country_app/domain/usecase/asia_usecase.dart';
import 'package:country_app/domain/usecase/aussie_usecase.dart';
import 'package:country_app/domain/usecase/europe_usecase.dart';
import 'package:country_app/domain/usecase/southA_usecase.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import '../data/data_source/remote_data_source.dart';
import '../data/network/app_api.dart';
import '../data/network/dio_factory.dart';
import '../data/network/network_info.dart';
import '../data/repository/repository_impl.dart';
import '../domain/repository/repository.dart';
import '../domain/usecase/all_country_usecase.dart';
import '../domain/usecase/northA_usecase.dart';
import '../domain/usecase/search_usecase.dart';
import '../presentation/home/home_view_model.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  instance.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(DataConnectionChecker()));
  instance.registerLazySingleton<DioFactory>(() => DioFactory());
  final dio = await instance<DioFactory>().getDio();
  instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));
  instance.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImplementer(instance()));
  instance.registerLazySingleton<Repository>(
      () => RepositoryImpl(instance(), instance()));
}

initHomeModule() {
  if (!GetIt.I.isRegistered<AllCountryUseCase>()) {
    instance.registerFactory<AllCountryUseCase>(
        () => AllCountryUseCase(instance()));
    instance.registerFactory<SearchUseCase>(() => SearchUseCase(instance()));
    instance.registerFactory<AfricaCountryUseCase>(
        () => AfricaCountryUseCase(instance()));
    instance.registerFactory<AsiaCountryUseCase>(
        () => AsiaCountryUseCase(instance()));
    instance.registerFactory<EuropeCountryUseCase>(
        () => EuropeCountryUseCase(instance()));
    instance.registerFactory<NorthACountryUseCase>(
        () => NorthACountryUseCase(instance()));
    instance.registerFactory<SouthACountryUseCase>(
        () => SouthACountryUseCase(instance()));
    instance.registerFactory<AustraliaCountryUseCase>(
        () => AustraliaCountryUseCase(instance()));
    instance.registerFactory<HomeViewModel>(() => HomeViewModel(
        instance(),
        instance(),
        instance(),
        instance(),
        instance(),
        instance(),
        instance(),
        instance()));
  }
}
