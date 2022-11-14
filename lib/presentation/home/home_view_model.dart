import 'dart:async';
import 'dart:ffi';

import 'package:country_app/domain/model/model.dart';
import 'package:country_app/domain/usecase/all_country_usecase.dart';
import 'package:country_app/domain/usecase/aussie_usecase.dart';
import 'package:country_app/presentation/common/state_renderer/state_renderer.dart';
import 'package:country_app/presentation/common/state_renderer/state_renderer_impl.dart';
import 'package:rxdart/rxdart.dart';
import 'package:country_app/presentation/base/base_view_model.dart';
import '../../domain/usecase/africa_usecase.dart';
import '../../domain/usecase/asia_usecase.dart';
import '../../domain/usecase/europe_usecase.dart';
import '../../domain/usecase/northA_usecase.dart';
import '../../domain/usecase/search_usecase.dart';
import '../../domain/usecase/southA_usecase.dart';
import '../common/freezed/freezed_data_class.dart';

class HomeViewModel extends BaseViewModel
    with HomeViewModelInputs, HomeViewModelOutputs {
  StreamController allCountryStreamController =
      BehaviorSubject<List<AllCountryData>>();

  var searchObject = SearchObject('');

  AllCountryUseCase allCountryUseCase;
  SearchUseCase searchUseCase;
  AfricaCountryUseCase africaCountryUseCase;
  AsiaCountryUseCase asiaCountryUseCase;
  EuropeCountryUseCase europeCountryUseCase;
  AustraliaCountryUseCase australiaCountryUseCase;
  NorthACountryUseCase northACountryUseCase;
  SouthACountryUseCase southACountryUseCase;
  HomeViewModel(
      this.allCountryUseCase,
      this.searchUseCase,
      this.asiaCountryUseCase,
      this.europeCountryUseCase,
      this.australiaCountryUseCase,
      this.northACountryUseCase,
      this.africaCountryUseCase,
      this.southACountryUseCase);

  @override
  void dispose() {
    allCountryStreamController.close();
  }

  @override
  Sink get inputAllCountry => allCountryStreamController.sink;

  @override
  Stream<List<AllCountryData>> get outputAllCountry =>
      allCountryStreamController.stream.map((event) => event);

  @override
  void start() {
    _allCountryDetails();
  }

  _allCountryDetails() async {
    inputState
        .add(LoadingState(stateRendererType: StateRendererType.LOADING_STATE));
    (await allCountryUseCase.execute(Void)).fold((failure) {
      inputState.add(ErrorState(
          stateRendererType: StateRendererType.FULLSCREEN_ERROR_STATE,
          message: failure.message));
    }, (details) {
      inputState.add(ContentState());

      inputAllCountry.add(details);
    });
  }

  _allCountrySearchDetails() async {
    inputState
        .add(LoadingState(stateRendererType: StateRendererType.LOADING_STATE));
    (await searchUseCase.execute(SearchUseCaseInput(searchObject.search))).fold(
        (failure) {
      inputState.add(ErrorState(
          stateRendererType: StateRendererType.FULLSCREEN_ERROR_STATE,
          message: failure.message));
    }, (details) {
      inputState.add(ContentState());
      inputAllCountry.add(details);
    });
  }

  _africaCountryDetails() async {
    inputState
        .add(LoadingState(stateRendererType: StateRendererType.LOADING_STATE));
    (await africaCountryUseCase.execute(Void)).fold((failure) {
      inputState.add(ErrorState(
          stateRendererType: StateRendererType.FULLSCREEN_ERROR_STATE,
          message: failure.message));
    }, (details) {
      inputState.add(ContentState());

      inputAllCountry.add(details);
    });
  }

  _asiaCountryDetails() async {
    inputState
        .add(LoadingState(stateRendererType: StateRendererType.LOADING_STATE));
    (await asiaCountryUseCase.execute(Void)).fold((failure) {
      inputState.add(ErrorState(
          stateRendererType: StateRendererType.FULLSCREEN_ERROR_STATE,
          message: failure.message));
    }, (details) {
      inputState.add(ContentState());

      inputAllCountry.add(details);
    });
  }

  _europeCountryDetails() async {
    inputState
        .add(LoadingState(stateRendererType: StateRendererType.LOADING_STATE));
    (await europeCountryUseCase.execute(Void)).fold((failure) {
      inputState.add(ErrorState(
          stateRendererType: StateRendererType.FULLSCREEN_ERROR_STATE,
          message: failure.message));
    }, (details) {
      inputState.add(ContentState());

      inputAllCountry.add(details);
    });
  }

  _northACountryDetails() async {
    inputState
        .add(LoadingState(stateRendererType: StateRendererType.LOADING_STATE));
    (await northACountryUseCase.execute(Void)).fold((failure) {
      inputState.add(ErrorState(
          stateRendererType: StateRendererType.FULLSCREEN_ERROR_STATE,
          message: failure.message));
    }, (details) {
      inputState.add(ContentState());

      inputAllCountry.add(details);
    });
  }

  _southCountryDetails() async {
    inputState
        .add(LoadingState(stateRendererType: StateRendererType.LOADING_STATE));
    (await southACountryUseCase.execute(Void)).fold((failure) {
      inputState.add(ErrorState(
          stateRendererType: StateRendererType.FULLSCREEN_ERROR_STATE,
          message: failure.message));
    }, (details) {
      inputState.add(ContentState());

      inputAllCountry.add(details);
    });
  }

  _aussieCountryDetails() async {
    inputState
        .add(LoadingState(stateRendererType: StateRendererType.LOADING_STATE));
    (await australiaCountryUseCase.execute(Void)).fold((failure) {
      inputState.add(ErrorState(
          stateRendererType: StateRendererType.FULLSCREEN_ERROR_STATE,
          message: failure.message));
    }, (details) {
      inputState.add(ContentState());

      inputAllCountry.add(details);
    });
  }

  @override
  setSearch(String search) {
    if (search.isNotEmpty) {
      searchObject = searchObject.copyWith(search: search);
    }
  }

  @override
  search() {
    _allCountrySearchDetails();
  }

  @override
  getAfrica() {
    _africaCountryDetails();
  }

  @override
  getAsia() {
    _asiaCountryDetails();
  }

  @override
  getAustralia() {
    _aussieCountryDetails();
  }

  @override
  getEurope() {
    _europeCountryDetails();
  }

  @override
  getNorthA() {
    _northACountryDetails();
  }

  @override
  getSouthA() {
    _southCountryDetails();
  }
}

abstract class HomeViewModelInputs {
  Sink get inputAllCountry;
  setSearch(String search);
  search();
  getAfrica();
  getAsia();
  getNorthA();
  getSouthA();
  getAustralia();
  getEurope();
}

abstract class HomeViewModelOutputs {
  Stream<List<AllCountryData>> get outputAllCountry;
}
