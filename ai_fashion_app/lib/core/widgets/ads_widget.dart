import 'package:flutter/material.dart';

class AdsWidget extends StatelessWidget {
  const AdsWidget({super.key});
  static const bool _displayAdd = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _displayAdd ? 70 : 0,
      child: Card(
        shadowColor: Colors.grey[600],
        child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("loading Ad..."),
                // CircularProgressIndicator(),
              ],
            )
        )
      ),
    );
  }
}
