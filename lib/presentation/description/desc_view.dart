import 'package:country_app/domain/model/model.dart';
import 'package:country_app/presentation/resources/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../resources/ui_parameters.dart';
import '../resources/values_manager.dart';

class DescView extends StatelessWidget {
  final AllCountryData country;
  DescView({Key? key, required this.country}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imgList = [country.flags!.png, country.coatOfArms!.png];

    return Scaffold(
      appBar: AppBar(
        elevation: AppSize.s0,
        backgroundColor: customScaffoldColor(context),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: customCheckBoxColor(context),
          ),
        ),
        centerTitle: true,
        title: Text(
          country.name!.common,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontSize: FontSize.s18),
        ),
      ),
      backgroundColor: customScaffoldColor(context),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSize.s20),
          child: Column(
            children: [
              CarouselSlider(
                items: imgList
                    .map((banner) => SizedBox(
                          width: double.infinity,
                          child: Card(
                            // color: customScaffoldColor(context),
                            elevation: AppSize.s1_5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    AppSize.s12,
                                  ),
                                ),
                                side: BorderSide(
                                    color: customScaffoldColor(context),
                                    width: AppSize.s1_5)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(AppSize.s12),
                              child: Image.network(
                                banner,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ))
                    .toList(),
                options: CarouselOptions(
                  height: AppSize.s200,
                  autoPlay: false,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                ),
              ),
              SizedBox(
                height: AppSize.s25,
              ),
              descRow('Population:', country.population.toString(), context),
              SizedBox(
                height: AppSize.s5,
              ),
              descRow('Region:', country.region, context),
              SizedBox(
                height: AppSize.s5,
              ),
              descRow('Capital:', country.capital[0], context),
              SizedBox(
                height: AppSize.s5,
              ),
              descRow('Sub-region:', country.subregion, context),
              SizedBox(
                height: AppSize.s25,
              ),
              descRow('Landlocked:', country.landlocked.toString(), context),
              SizedBox(
                height: AppSize.s5,
              ),
              descRow('first day of the week:', country.startOfWeek, context),
              SizedBox(
                height: AppSize.s25,
              ),
              descRow('Time Zone:', country.timezones[0], context),
              SizedBox(
                height: AppSize.s5,
              ),
              descRow('Dialling Code:', country.diallingCode!.code, context),
              SizedBox(
                height: AppSize.s5,
              ),
              descRow('Driving side:', country.drivingSide!.side, context),
            ],
          ),
        ),
      ),
    );
  }

  Row descRow(String desc, String data, BuildContext context) {
    return Row(
      children: [
        Text(
          desc,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(
          width: AppSize.s10,
        ),
        Text(
          data,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    );
  }
}
