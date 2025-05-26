import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';
import 'package:room_sublease/view/components/custom_snakbar/custom_snakbar.dart';

class CustomCheckbox extends StatefulWidget {
  final List<String> items;
  final List<String>? initiallySelected;
  final ValueChanged<List<String>>? onSelectionChanged;
  final bool isMinimum;

  const CustomCheckbox({
    super.key,
    required this.items,
    this.initiallySelected,
    this.onSelectionChanged,
    this.isMinimum = false,
  });

  @override
  State<CustomCheckbox> createState() => CustomCheckboxState();
}

class CustomCheckboxState extends State<CustomCheckbox> {
  late List<String> selectedItems;

  @override
  void initState() {
    super.initState();
    selectedItems = widget.initiallySelected != null
        ? List.from(widget.initiallySelected!)
        : [];
  }

  void _onItemCheckedChange(String itemValue, bool checked) {
    if (widget.isMinimum) {
      if (checked &&
          // ignore: prefer_is_empty
          selectedItems.length >= 1 &&
          !selectedItems.contains(itemValue)) {
        customSnackBar(
            message: "You can select only one option.", isSuccess: false);
        return;
      }
    }

    setState(() {
      if (checked) {
        if (!selectedItems.contains(itemValue)) selectedItems.add(itemValue);
      } else {
        selectedItems.remove(itemValue);
      }
      if (widget.onSelectionChanged != null) {
        widget.onSelectionChanged!(List.from(selectedItems));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      itemCount: widget.items.length,
      separatorBuilder: (context, index) => SizedBox(height: 0.h),
      itemBuilder: (context, index) {
        final item = widget.items[index];
        final checked = selectedItems.contains(item);
        return InkWell(
          onTap: () {
            _onItemCheckedChange(item, !checked);
          },
          borderRadius: BorderRadius.circular(8.r),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonText(
                  text: item,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF161312),
                ),
                Transform.scale(
                  scale: 1.3,
                  child: Checkbox(
                    value: checked,
                    fillColor: WidgetStateProperty.all(Colors.transparent),
                    checkColor: Colors.black,
                    onChanged: (value) {
                      _onItemCheckedChange(item, value ?? false);
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    side: WidgetStateBorderSide.resolveWith((states) {
                      if (states.contains(WidgetState.selected)) {
                        return BorderSide(
                            color: Color(0xFFE9DFD8),
                            width: 2); // active border
                      }
                      return BorderSide(
                          color: Color(0xFFE9DFD8),
                          width: 2); // inactive border
                    }),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
