import 'package:country_app/domain/model/model.dart';
import 'package:country_app/presentation/resources/color_manager.dart';
import 'package:country_app/presentation/resources/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../../app/dependency_injection.dart';
import '../../data/network/network_info.dart';
import '../common/state_renderer/state_renderer_impl.dart';
import '../resources/routes_manager.dart';
import '../resources/strings_manager.dart';
import '../resources/ui_parameters.dart';
import '../resources/values_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_view_model.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  HomeViewModel _viewModel = instance<HomeViewModel>();
  NetworkInfo _networkInfo = instance<NetworkInfo>();

  @override
  void initState() {
    _bind();
    _controller.addListener(() => _viewModel.setSearch(_controller.text));

    super.initState();
  }

  _bind() async {
    if (await _networkInfo.isConnected) {
      _viewModel.start();
    }
  }

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: AppSize.s0,
            backgroundColor: customScaffoldColor(context),
          ),
          backgroundColor: customScaffoldColor(context),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSize.s20),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.explore,
                    style: GoogleFonts.pacifico(
                      color: customExploreColor(context),
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: AppSize.s10,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: customSearchContainerColor(context),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          AppSize.s5,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: AppSize.s10,
                        ),
                        Icon(
                          Icons.search,
                          color: customSearchColor(context),
                        ),
                        Expanded(
                          child: TextField(
                            textInputAction: TextInputAction.search,
                            onSubmitted: (_) async {
                              if (_controller.text.length == 3) {
                                _viewModel.search();
                                _controller.clear();
                              }
                            },
                            controller: _controller,
                            enableSuggestions: true,
                            cursorColor: ColorManager.grey,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              hintText: AppStrings.search,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: AppSize.s20,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () {
                        showMaterialModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                AppSize.s12,
                              ),
                            ),
                          ),
                          backgroundColor: customScaffoldColor(context),
                          context: context,
                          builder: (context) => SingleChildScrollView(
                            controller: ModalScrollController.of(context),
                            child: Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: AppSize.s12),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: AppSize.s20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Filter',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge
                                            ?.copyWith(fontSize: FontSize.s18),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(
                                                AppSize.s5,
                                              ),
                                            ),
                                            color: customSearchContainerColor(
                                                context),
                                          ),
                                          child: Icon(
                                            Icons.close,
                                            color: Colors.grey,
                                            size: AppSize.s10,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: AppSize.s20,
                                  ),
                                  ExpansionTile(
                                    iconColor: customCheckBoxColor(context),
                                    title: Text(
                                      'Continent',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(fontSize: FontSize.s16),
                                    ),
                                    children: [
                                      checkedBoxAfricaTile('Africa'),
                                      checkedBoxAsiaTile(
                                        'Asia',
                                      ),
                                      checkedBoxAussieTile(
                                        'Australia',
                                      ),
                                      checkedBoxEuropeTile(
                                        'Europe',
                                      ),
                                      checkedBoxNorthATile(
                                        'North America',
                                      ),
                                      checkedBoxSouthATile(
                                        'South America',
                                      ),
                                      SizedBox(
                                        height: AppSize.s40,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                AppSize.s5,
                              ),
                            ),
                            border: Border.all(
                              color: customSearchContainerColor(context),
                            )),
                        child: Row(
                          children: [
                            SizedBox(
                              width: AppSize.s5,
                            ),
                            Icon(
                              Icons.filter_list_alt,
                            ),
                            SizedBox(
                              width: AppSize.s5,
                            ),
                            Text(
                              'Filter',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            SizedBox(
                              width: AppSize.s5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppSize.s20,
                  ),
                  Center(
                    child: StreamBuilder<FlowState>(
                      stream: _viewModel.outputState,
                      builder: (context, snapshot) {
                        return snapshot.data?.getScreenWidget(
                              context,
                              _getHomeWidget(),
                              () {
                                _viewModel.start();
                              },
                            ) ??
                            Container();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  ListTile checkedBoxAfricaTile(String continent) {
    return ListTile(
      onTap: () {
        _viewModel.getAfrica();

        Navigator.pop(context);
      },
      leading: Text(
        continent,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }

  ListTile checkedBoxAsiaTile(
    String continent,
  ) {
    return ListTile(
      onTap: () {
        _viewModel.getAsia();
        Navigator.pop(context);
      },
      leading: Text(
        continent,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }

  ListTile checkedBoxEuropeTile(
    String continent,
  ) {
    return ListTile(
      onTap: () {
        _viewModel.getEurope();

        Navigator.pop(context);
      },
      leading: Text(
        continent,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }

  ListTile checkedBoxNorthATile(
    String continent,
  ) {
    return ListTile(
      onTap: () {
        _viewModel.getNorthA();

        Navigator.pop(context);
      },
      leading: Text(
        continent,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }

  ListTile checkedBoxSouthATile(
    String continent,
  ) {
    return ListTile(
      onTap: () {
        _viewModel.getSouthA();

        Navigator.pop(context);
      },
      leading: Text(
        continent,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }

  ListTile checkedBoxAussieTile(
    String continent,
  ) {
    return ListTile(
      onTap: () {
        _viewModel.getAustralia();
        Navigator.pop(context);
      },
      leading: Text(
        continent,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }

  _getHomeWidget() {
    return _allCountry();
  }

  Widget _allCountry() {
    return StreamBuilder<List<AllCountryData>>(
        stream: _viewModel.outputAllCountry,
        builder: (context, snapshot) {
          return _allCountryList(snapshot.data);
        });
  }

  Widget _allCountryList(List<AllCountryData>? data) {
    if (data != null) {
      data.sort((a, b) =>
          a.name!.common.toLowerCase().compareTo(b.name!.common.toLowerCase()));

      print(data.length);

      return ListView.builder(
        itemCount: data.length,
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final country = data[index];
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.descRoute,
                      arguments: country);
                },
                child: SizedBox(
                  height: 70,
                  width: double.infinity,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            AppSize.s12,
                          ),
                        ),
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: SvgPicture.network(
                            country.flags!.svg,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            country.name!.common,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          if (country.capital.isNotEmpty)
                            Text(
                              country.capital.first,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: AppSize.s20,
              ),
            ],
          );
        },
      );
    } else {
      return Container();
    }
  }

  // @override
  // void dispose() {
  //   _viewModel.dispose();
  //   _controller.dispose();
  //   super.dispose();
  // }
}
