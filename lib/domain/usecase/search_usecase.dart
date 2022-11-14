import 'package:dartz/dartz.dart';

import '../../data/network/failure.dart';
import '../model/model.dart';
import '../repository/repository.dart';
import 'base_usecase.dart';

class SearchUseCase
    implements BaseUseCase<SearchUseCaseInput, List<AllCountryData>> {
  Repository _repository;
  SearchUseCase(this._repository);

  @override
  Future<Either<Failure, List<AllCountryData>>> execute(
      SearchUseCaseInput input) async {
    return await _repository
        .getSearchArticle(SearchRequest(search: input.search));
  }
}

class SearchUseCaseInput {
  String search;
  SearchUseCaseInput(this.search);
}
