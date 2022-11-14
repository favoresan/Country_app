import 'package:dartz/dartz.dart';

import '../../data/network/failure.dart';
import '../model/model.dart';
import '../repository/repository.dart';
import 'base_usecase.dart';

class NorthACountryUseCase implements BaseUseCase<void, List<AllCountryData>> {
  Repository _repository;
  NorthACountryUseCase(this._repository);

  @override
  Future<Either<Failure, List<AllCountryData>>> execute(void input) async {
    return await _repository.getNorthACountry();
  }
}
