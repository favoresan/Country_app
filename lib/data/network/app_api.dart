import 'package:country_app/data/responses/responses.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import '../../app/constant.dart';
part 'app_api.g.dart';

@RestApi(baseUrl: Constant.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;
  @GET('/v3.1/all')
  Future<List<AllCountryDataResponse>> getAllCountry();

  @GET('/v3.1/alpha')
  Future<List<AllCountryDataResponse>> getSearchCountry(
    @Query("codes") String code,
  );

  @GET('/v3.1/subregion/africa')
  Future<List<AllCountryDataResponse>> getSearchAfricaCountry();
  @GET('/v3.1/subregion/europe')
  Future<List<AllCountryDataResponse>> getSearchEuropeCountry();
  @GET('/v3.1/subregion/australia')
  Future<List<AllCountryDataResponse>> getSearchAustraliaCountry();

  @GET('/v3.1/subregion/asia')
  Future<List<AllCountryDataResponse>> getSearchAsiaCountry();
  @GET('/v3.1/subregion/north america')
  Future<List<AllCountryDataResponse>> getSearchNorthACountry();
  @GET('/v3.1/subregion/south america')
  Future<List<AllCountryDataResponse>> getSearchSouthACountry();
}
