import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';
import 'package:get/get.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_color.dart';
import 'package:room_sublease/utils/app_string.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class CustomCountryPicker extends StatefulWidget {
  final Function(Country) onCountrySelected;
  final String? Function(Country?)? validator;

  const CustomCountryPicker({
    super.key,
    required this.onCountrySelected,
    this.validator,
  });

  @override
  CustomCountryPickerState createState() => CustomCountryPickerState();
}

class CustomCountryPickerState extends State<CustomCountryPicker> {
  Country? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return FormField<Country>(
      validator: widget.validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      builder: (formFieldState) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.height,
            CommonText(text: AppString.country),
            5.height,
            GestureDetector(
              onTap: () {
                showCountryPicker(
                  context: context,
                  showPhoneCode: true,
                  onSelect: (Country country) {
                    setState(() {
                      selectedCountry = country;
                    });
                    formFieldState.didChange(country); // trigger validation
                    widget.onCountrySelected(country);
                  },
                  countryListTheme: CountryListThemeData(
                    flagSize: 25,
                    backgroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 16, color: Colors.black),
                    bottomSheetHeight: 500,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    inputDecoration: InputDecoration(
                      labelText: 'Search country',
                      hintText: 'Start typing to search',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                );
              },
              child: Container(
                width: Get.width,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  border: Border.all(
                    color: formFieldState.hasError ? Colors.red : Color(0x3F000000),
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      // ignore: deprecated_member_use
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 8,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (selectedCountry != null)
                      Row(
                        children: [
                          Text(
                            selectedCountry!.flagEmoji,
                            style: const TextStyle(fontSize: 24),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            selectedCountry!.name,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      )
                    else
                      const Text(
                        'Select Country',
                        style: TextStyle(
                          color: Color(0xFF9E9E9E),
                          fontSize: 16,
                        ),
                      ),
                    const Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ),
            if (formFieldState.hasError)
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8),
                child: Text(
                  formFieldState.errorText!,
                  style: const TextStyle(color: Colors.red, fontSize: 12),
                ),
              ),
          ],
        );
      },
    );
  }
}
