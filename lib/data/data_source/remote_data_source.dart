import '../../domain/model/model.dart';
import '../network/app_api.dart';
import '../responses/responses.dart';

abstract class RemoteDataSource {
  Future<List<AllCountryDataResponse>> getAllCountry();
  Future<List<AllCountryDataResponse>> getAfricaCountry();
  Future<List<AllCountryDataResponse>> getAsiaCountry();
  Future<List<AllCountryDataResponse>> getAustraliaCountry();
  Future<List<AllCountryDataResponse>> getNorthACountry();
  Future<List<AllCountryDataResponse>> getSouthACountry();
  Future<List<AllCountryDataResponse>> getEuropeCountry();
  Future<List<AllCountryDataResponse>> getSearchArticle(
      SearchRequest searchRequest);
}

class RemoteDataSourceImplementer implements RemoteDataSource {
  final AppServiceClient _appServiceClient;
  RemoteDataSourceImplementer(this._appServiceClient);

  @override
  Future<List<AllCountryDataResponse>> getAllCountry() async {
    return await _appServiceClient.getAllCountry();
  }

  @override
  Future<List<AllCountryDataResponse>> getSearchArticle(
      SearchRequest searchRequest) async {
    return await _appServiceClient.getSearchCountry(searchRequest.search);
  }

  @override
  Future<List<AllCountryDataResponse>> getAfricaCountry() async {
    return await _appServiceClient.getSearchAfricaCountry();
  }

  @override
  Future<List<AllCountryDataResponse>> getAsiaCountry() async {
    return await _appServiceClient.getSearchAsiaCountry();
  }

  @override
  Future<List<AllCountryDataResponse>> getAustraliaCountry() async {
    return await _appServiceClient.getSearchAustraliaCountry();
  }

  @override
  Future<List<AllCountryDataResponse>> getEuropeCountry() async {
    return await _appServiceClient.getSearchEuropeCountry();
  }

  @override
  Future<List<AllCountryDataResponse>> getNorthACountry() async {
    return await _appServiceClient.getSearchNorthACountry();
  }

  @override
  Future<List<AllCountryDataResponse>> getSouthACountry() async {
    return await _appServiceClient.getSearchSouthACountry();
  }
}
