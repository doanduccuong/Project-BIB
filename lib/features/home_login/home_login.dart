import 'package:base_flutter/commands/base_command.dart';
import 'package:base_flutter/configs/colors.dart';
import 'package:base_flutter/features/home_login/home_log_in_provider.dart';
import 'package:base_flutter/features/home_login/mock_data.dart';
import 'package:base_flutter/features/home_screen/my_investors/subpage/transaction_detail/edit_investor/widget/form_design.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

import 'mock_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController cityController;
  late TextEditingController provinceController;
  late TextEditingController districtController;
  late FocusNode cityFocusNode;
  late FocusNode provinceFocusNode;

  late FocusNode districtFocusNode;
  late OverlayState? overlayState;
  late OverlayEntry overlayEntry;
  void showOverLay(BuildContext context) async {
    overlayState!.insert(overlayEntry);
  }

  void initState() {
    cityController = TextEditingController();
    provinceController = TextEditingController();
    districtController = TextEditingController();
    cityFocusNode = FocusNode();
    provinceFocusNode = FocusNode();
    districtFocusNode = FocusNode();
    overlayState = Overlay.of(context);
    overlayEntry = OverlayEntry(
        maintainState: true,
        builder: (context) => Container(
              height: 200,
              color: Colors.red,
              padding: EdgeInsets.only(top: 200),
              child: Text(
                "d",
                style: TextStyles.normalStyle,
              ),
            ));
    super.initState();
  }


  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final read = context.read<HomeLoginProvider>();
    final watch = context.watch<HomeLoginProvider>();

    return ChangeNotifierProvider(
      create: (_) => HomeLoginProvider(),
      builder: (context, child) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              FormDesign(
                onTap: () {
                  read.toggleShowCityList();
                },
                focusNode: cityFocusNode,
                onChanged: (value) => searchCity(cityController.text),
                controller: cityController,
                title: "City",
                onEditingComplete: _onEditingCompleteCity,
              ),
              watch.isShowCityList
                  ? Expanded(
                      child: ListView.builder(
                        itemCount: watch.cities.length,
                        itemBuilder: (context, index) {
                          final city =
                              context.watch<HomeLoginProvider>().cities[index];
                          return ListTile(
                            onTap: () {
                              cityController.text = city;
                            },
                            title: Text(city),
                          );
                        },
                      ),
                    )
                  : SizedBox(),
              SizedBox(
                height: 100,
              ),
              DropdownButtonFormField(
                items: province.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {},
              ),
              DropdownButtonFormField(
                items: district.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onEditingCompleteCity() {
    FocusScope.of(context).unfocus();
  }

  void searchCity(String query) {
    final suggestions = context.watch<HomeLoginProvider>().cities.where((city) {
      final lowerCaseCity = city.toLowerCase();
      final input = query.toLowerCase();
      return lowerCaseCity.contains(input);
    }).toList();
    context.read<HomeLoginProvider>().setOnSearchCity(suggestions);
  }
}

Widget listCityWidget(
    BuildContext context, TextEditingController cityController) {
  return Expanded(
    child: ListView.builder(
      itemCount: context.read<HomeLoginProvider>().cities.length,
      itemBuilder: (context, index) {
        final city = context.watch<HomeLoginProvider>().cities[index];
        return ListTile(
          onTap: () => cityController.text = city,
          title: Text(city),
        );
      },
    ),
  );
}

TextStyle normalStyle = TextStyle(
  color: AppColors.textSecondaryColor,
  fontSize: 12,
  fontWeight: FontWeight.w400,
);

// List<String> cities = ["Ba Ria Vung Tau", "Ho Chi Minh", "Ha Noi"];
List<String> province = ["Ha Noi", "Thai Nguyen", "Nam Dinh", "Bac Ninh"];
List<String> district = ["Ha Noi", "Thai Nguyen", "Nam Dinh", "Bac Ninh"];
