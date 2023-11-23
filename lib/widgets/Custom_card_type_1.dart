import 'package:flcomponents/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text("soy un titulo"),
            subtitle: Text(
                'Aliqua eiusmod non excepteur et. Elit cillum tempor nisi aliqua qui cillum velit qui nisi nulla duis aute. Sint nostrud occaecat ea velit. Excepteur aliqua magna ea velit Lorem laboris.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text("Calcel")),
                TextButton(onPressed: () {}, child: const Text("Ok"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
