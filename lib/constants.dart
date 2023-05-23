import 'package:flutter/material.dart';

const Color skyStartColor = Color(0xFF87CEEB); // Light Blue
const Color skyEndColor = Color(0xFF4682B4); // Dark Blue

const skyGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [skyStartColor, skyEndColor],
  stops: [0.0, 1.0],
);
const Color gloomySkyStartColor = Color(0xFF6C7A89); // Dark Gray
const Color gloomySkyEndColor = Color(0xFFBDC3C7); // Light Gray

const gloomySkyGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [gloomySkyStartColor, gloomySkyEndColor],
  stops: [0.0, 1.0],
);

const Color gradientStartColor = Color(0xFF1C2331); // Darker Blue
const Color gradientMidColor = Color(0xFF2C3E50); // Dark Blue
const Color gradientEndColor = Color(0xFF1A2C3F); // Darkest Blue

const darkGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [gradientStartColor, gradientMidColor, gradientEndColor],
  stops: [0.0, 0.5, 1.0],
);
const Color nightSkyStartColor = Color(0xFF17192C); // Midnight Blue
const Color nightSkyMidColor = Color(0xFF0D0F1A); // Dark Midnight Blue
const Color nightSkyEndColor = Color(0xFF000000); // Black

const nightSkyGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [nightSkyStartColor, nightSkyMidColor, nightSkyEndColor],
  stops: [0.0, 0.5, 1.0],
);
const Color stormyDayStartColor = Color(0xFF424874); // Light Indigo
const Color stormyDayEndColor = Color(0xFF1F2A44); // Dark Indigo

const stormyDayGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [stormyDayStartColor, stormyDayEndColor],
  stops: [0.0, 1.0],
);
const Color cloudyDayStartColor = Color(0xFFCCCCCC); // Light Gray
const Color cloudyDayEndColor = Color(0xFF999999); // Dark Gray

const cloudyDayGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [cloudyDayStartColor, cloudyDayEndColor],
  stops: [0.0, 1.0],
);
