import 'package:country_app/data/network/failure.dart';
import 'package:country_app/domain/model/model.dart';
import 'package:country_app/domain/repository/repository.dart';
import 'package:country_app/domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

class AllCountryUseCase implements BaseUseCase<void, List<AllCountryData>> {
  Repository _repository;
  AllCountryUseCase(this._repository);

  @override
  Future<Either<Failure, List<AllCountryData>>> execute(void input) async {
    return await _repository.getAllCountry();
  }


}

