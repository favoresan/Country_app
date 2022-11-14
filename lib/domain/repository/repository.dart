import 'package:country_app/domain/model/model.dart';
import 'package:dartz/dartz.dart';
import '../../data/network/failure.dart';

abstract class Repository {
  Future<Either<Failure, List<AllCountryData>>> getAllCountry();
  Future<Either<Failure, List<AllCountryData>>> getAfricaCountry();
  Future<Either<Failure, List<AllCountryData>>> getAsiaCountry();
  Future<Either<Failure, List<AllCountryData>>> getEuropeCountry();
  Future<Either<Failure, List<AllCountryData>>> getAustraliaCountry();
  Future<Either<Failure, List<AllCountryData>>> getNorthACountry();
  Future<Either<Failure, List<AllCountryData>>> getSouthACountry();
  Future<Either<Failure, List<AllCountryData>>> getSearchArticle(
      SearchRequest searchRequest);
}
