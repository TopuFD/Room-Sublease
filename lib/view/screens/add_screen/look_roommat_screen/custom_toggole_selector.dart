import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:room_sublease/utils/app_color.dart';

class HorizontalToggleSlider extends StatefulWidget {
  final List<String> options;
  final RxString selectedOption;

  const HorizontalToggleSlider({
    super.key,
    required this.options,
    required this.selectedOption,
  });

  @override
  State<HorizontalToggleSlider> createState() => _HorizontalToggleSliderState();
}

class _HorizontalToggleSliderState extends State<HorizontalToggleSlider> {
  double dragOffset = 0.0;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.options.indexOf(widget.selectedOption.value);
  }

  void updateSelected(int index) {
    setState(() {
      selectedIndex = index;
      widget.selectedOption.value = widget.options[index];
      log("selectSlider=====${widget.selectedOption.value}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      selectedIndex = widget.options.indexOf(widget.selectedOption.value);
      double itemWidth =
          MediaQuery.of(context).size.width / widget.options.length;

      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 80,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Row(
                  children: List.generate(widget.options.length, (index) {
                    final option = widget.options[index];
                    final isSelected = widget.selectedOption.value == option;
                    return GestureDetector(
                      onTap: () => updateSelected(index),
                      child: SizedBox(
                        width: itemWidth - 18,
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 5,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? AppColors.blueDeep
                                      : AppColors.blue50,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              const SizedBox(height: 8),
                              SizedBox(
                                height: 40,
                                child: Text(
                                  option,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: isSelected
                                        ? Colors.black
                                        : Colors.grey[600],
                                    fontWeight: isSelected
                                        ? FontWeight.w600
                                        : FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                GestureDetector(
                  onHorizontalDragUpdate: (details) {
                    dragOffset += details.delta.dx;
                  },
                  onHorizontalDragEnd: (details) {
                    if (dragOffset.abs() > 10) {
                      if (dragOffset > 0 &&
                          selectedIndex < widget.options.length - 1) {
                        updateSelected(selectedIndex + 1);
                      } else if (dragOffset < 0 && selectedIndex > 0) {
                        updateSelected(selectedIndex - 1);
                      }
                    }
                    dragOffset = 0;
                  },
                  child: AnimatedAlign(
                    alignment: Alignment(
                        -1.1 +
                            (2 / (widget.options.length - 1.05)) *
                                selectedIndex,
                        0),
                    duration: const Duration(milliseconds: 300),
                    child: Container(
                      width: itemWidth,
                      alignment: Alignment.topCenter,
                      margin: const EdgeInsets.only(top: 7),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 700),
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Color(0xFFF3EAE3), width: 2),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}
