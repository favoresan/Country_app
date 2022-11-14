import 'package:country_app/presentation/resources/color_manager.dart';
import 'package:country_app/presentation/resources/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../resources/strings_manager.dart';
import '../resources/ui_parameters.dart';
import '../resources/values_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  TextEditingController _controller = TextEditingController();

  bool checkedAfrica = true;
  bool checkedAntarctica = false;
  bool checkedAsia = false;
  bool checkedAus = false;
  bool checkedEurope = false;
  bool checkedNorthA = false;
  bool checkedSouthA = false;
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
                            onSubmitted: (_) async {},
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
                          bounce: true,
                          shape: RoundedRectangleBorder(
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
                                      checkedBoxTile('Africa', checkedAfrica),
                                      checkedBoxTile(
                                          'Antarctica', checkedAntarctica),
                                      checkedBoxTile('Asia', checkedAsia),
                                      checkedBoxTile('Australia', checkedAus),
                                      checkedBoxTile('Europe', checkedEurope),
                                      checkedBoxTile(
                                          'North America', checkedNorthA),
                                      checkedBoxTile(
                                          'South America', checkedSouthA),
                                      SizedBox(
                                        height: AppSize.s20,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: AppSize.s10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            GestureDetector(
                                              onTap: () {},
                                              child: Container(
                                                height: 40,
                                                width: 70,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(
                                                        AppSize.s5,
                                                      ),
                                                    ),
                                                    border: Border.all(
                                                      color:
                                                          customCheckBoxColor(
                                                              context),
                                                    )),
                                                child: Center(
                                                  child: Text(
                                                    'Reset',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleMedium,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {},
                                              child: Container(
                                                height: 40,
                                                width: 180,
                                                decoration: BoxDecoration(
                                                  color: ColorManager.orange,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(
                                                      AppSize.s5,
                                                    ),
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'Show Result',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  CheckboxListTile checkedBoxTile(String continent, bool check) {
    return CheckboxListTile(
      checkColor: customScaffoldColor(context),
      activeColor: customCheckBoxColor(context),
      enableFeedback: false,
      checkboxShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppSize.s5,
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            AppSize.s5,
          ),
        ),
      ),
      title: Text(continent),
      value: check,
      onChanged: (newValue) {
        setState(() {
          check = newValue!;
        });
      },
      controlAffinity: ListTileControlAffinity.trailing,
    );
  }
}
