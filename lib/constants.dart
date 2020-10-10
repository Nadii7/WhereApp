import 'dart:ui';

import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xffDB2966);
Color kPrimaryLightColor = kPrimaryColor.withOpacity(0.1);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFCA3A80), Color(0xFF7E4D9E)],
);
const kTextColor = Color(0xff4D244A);
const kBgColor = Color(0xffF9F4FF);

const String kfacebookText = "دخول بواسطة فيس بوك";
const String kgoogleText = "دخول بواسطة جوجل";
const String kappleText = "دخول بواسطة حساب أبل";
