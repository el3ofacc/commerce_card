import 'package:flutter/material.dart';

void navigate(BuildContext context,Function ()newpage) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => newpage()));
}
void navigaterep(BuildContext context,Function ()newpage) {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => newpage()));
}
