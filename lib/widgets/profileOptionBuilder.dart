import 'package:flutter/material.dart';
import 'package:bet_app/widgets/profile_Options.dart';

class ProfileOptionBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ProfileOption(index: index);
          },
          itemCount: 5,
    );
  }
}