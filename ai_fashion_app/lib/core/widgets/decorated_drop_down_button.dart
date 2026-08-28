import 'package:flutter/material.dart';

class DecoratedDropdownButton<T> extends StatelessWidget {
  final T? value;
  final List<T> items;
  final String Function(T) getLabel;
  final void Function(T?)? onChanged;

  const DecoratedDropdownButton({
    super.key,
    required this.value,
    required this.items,
    required this.getLabel,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).primaryColor, width: 2), // Border color & width
        borderRadius: BorderRadius.circular(8), // Rounded corners
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: DropdownButton<T>(
          value: value,
          onChanged: onChanged,
          items: items.map((T item) {
            return DropdownMenuItem<T>(
              value: item,
              child: Text(getLabel(item)), // Display label from the item
            );
          }).toList(),
          underline: SizedBox(), // Remove default underline
        ),
      ),
    );
  }
}
