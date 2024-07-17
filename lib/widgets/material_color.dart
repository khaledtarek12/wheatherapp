import 'package:flutter/material.dart';

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }
  switch (condition) {
    case 'Sunny':
    case 'Clear':
      return Colors.orange;
    case 'Partly cloudy':
    case 'Overcast':
    case 'Cloudy': // Replace with the appropriate color for partly cloudy
    case 'Mist':
    case 'Fog':
    case 'Freezing fog':
      return Colors.blueGrey; // Replace with the appropriate color for cloudy
    case 'Patchy rain possible':
    case 'Patchy light rain':
    case 'Light rain':
    case 'Moderate rain at times':
    case 'Moderate rain':
    case 'Heavy rain at times':
    case 'Heavy rain':
    case 'Light rain shower':
    case 'Moderate or heavy rain shower':
    case 'Torrential rain shower':
    case 'Patchy snow possible':
    case 'Patchy light snow':
    case 'light snow':
    case 'Patchy Moderate snow':
    case 'Patchy Heavy snow':
    case 'Heavy snow':
    case 'Moderate snow':
    case 'Light snow showers':
    case 'Moderate or heavy snow showers':
    case 'Patchy sleet possible':
    case 'light sleet':
    case 'Light sleet showers':
    case 'Moderate or heavy sleet':
    case 'Moderate or heavy sleet showers':
    case 'Patchy freezing drizzle possible':
    case 'Light freezing rain':
    case 'Moderate or heavy freezing rain':
    case 'Light showers of ice pellets':
    case 'Moderate or heavy showers of ice pellets':
    case 'Thundery outbreaks possible':
    case 'Patchy Light rain with thunder':
    case 'Moderate or heavy rain with thunder':
    case 'Blowing snow':
    case 'Blizzard':
    case 'Ice pellets':
      return Colors.lightBlue;
    default:
      return Colors.blue;
  }
}
