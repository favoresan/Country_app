import 'package:country_app/data/mapper/mapper.dart';
import 'package:country_app/data/network/failure.dart';
import 'package:country_app/data/responses/responses.dart';
import 'package:country_app/domain/model/model.dart';
import 'package:country_app/domain/repository/repository.dart';
import 'package:dartz/dartz.dart';

import '../data_source/remote_data_source.dart';
import '../error_handler.dart';
import '../network/network_info.dart';

class RepositoryImpl extends Repository {
  NetworkInfo _networkInfo;
  RemoteDataSource _remoteDataSource;

  RepositoryImpl(
    this._remoteDataSource,
    this._networkInfo,
  );

  @override
  Future<Either<Failure, List<AllCountryData>>> getAllCountry() async {
    if (await _networkInfo.isConnected) {
      try {
        final List<AllCountryDataResponse> response =
            await _remoteDataSource.getAllCountry();
        return Right(response.map((e) => e.toDomain()).toList());
      } catch (err) {
        return Left(ErrorHandler.handle(err).failure);
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }

  @override
  Future<Either<Failure, List<AllCountryData>>> getSearchArticle(
      SearchRequest searchRequest) async {
    if (await _networkInfo.isConnected) {
      try {
        final List<AllCountryDataResponse> response =
            await _remoteDataSource.getSearchArticle(searchRequest);
        return Right(response.map((e) => e.toDomain()).toList());
      } catch (err) {
        return Left(ErrorHandler.handle(err).failure);
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }

  @override
  Future<Either<Failure, List<AllCountryData>>> getAfricaCountry() async {
    if (await _networkInfo.isConnected) {
      try {
        final List<AllCountryDataResponse> response =
            await _remoteDataSource.getAfricaCountry();
        return Right(response.map((e) => e.toDomain()).toList());
      } catch (err) {
        return Left(ErrorHandler.handle(err).failure);
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }

  @override
  Future<Either<Failure, List<AllCountryData>>> getAsiaCountry() async {
    if (await _networkInfo.isConnected) {
      try {
        final List<AllCountryDataResponse> response =
            await _remoteDataSource.getAsiaCountry();
        return Right(response.map((e) => e.toDomain()).toList());
      } catch (err) {
        return Left(ErrorHandler.handle(err).failure);
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }

  @override
  Future<Either<Failure, List<AllCountryData>>> getAustraliaCountry() async {
    if (await _networkInfo.isConnected) {
      try {
        final List<AllCountryDataResponse> response =
            await _remoteDataSource.getAustraliaCountry();
        return Right(response.map((e) => e.toDomain()).toList());
      } catch (err) {
        return Left(ErrorHandler.handle(err).failure);
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }

  @override
  Future<Either<Failure, List<AllCountryData>>> getEuropeCountry() async {
    if (await _networkInfo.isConnected) {
      try {
        final List<AllCountryDataResponse> response =
            await _remoteDataSource.getEuropeCountry();
        return Right(response.map((e) => e.toDomain()).toList());
      } catch (err) {
        return Left(ErrorHandler.handle(err).failure);
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }

  @override
  Future<Either<Failure, List<AllCountryData>>> getNorthACountry() async {
    if (await _networkInfo.isConnected) {
      try {
        final List<AllCountryDataResponse> response =
            await _remoteDataSource.getNorthACountry();
        return Right(response.map((e) => e.toDomain()).toList());
      } catch (err) {
        return Left(ErrorHandler.handle(err).failure);
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }

  @override
  Future<Either<Failure, List<AllCountryData>>> getSouthACountry() async {
    if (await _networkInfo.isConnected) {
      try {
        final List<AllCountryDataResponse> response =
            await _remoteDataSource.getSouthACountry();
        return Right(response.map((e) => e.toDomain()).toList());
      } catch (err) {
        return Left(ErrorHandler.handle(err).failure);
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }
}
