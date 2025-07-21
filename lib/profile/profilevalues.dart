import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class Profile {
  IconData? icon;
  String? text;
  IconData? icon2;

  Profile(this.icon, this.text, this.icon2);
}

List<Profile> proval = [
  Profile(
    Icons.border_color,"edit profile",Icons.arrow_forward_ios),
      Profile(
    Icons.assignment_add,"Address book",Icons.arrow_forward_ios),
      Profile(
Symbols.package_2,"Order Details",Icons.arrow_forward_ios),
      Profile(
    Icons.lock,"change password",Icons.arrow_forward_ios),
      Profile(
    Icons.logout,"Log Out",Icons.arrow_forward_ios),
    
];
