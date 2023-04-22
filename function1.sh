#!/bin/bash -x
FREEZING_POINT_C=0
FREEZING_POINT_F=32
BOILING_POINT_C=100
BOILING_POINT_F=212

function celsius_to_fahrenheit {
  local celsius=$1
  local degF=$(echo "scale=2; ($celsius*9/5)+32" | bc)
  echo "${celsius}°C is ${degF}°F"
}

function fahrenheit_to_celsius {
  local fahrenheit=$1
  local degC=$(echo "scale=2; ($fahrenheit-32)*5/9" | bc)
  echo "${fahrenheit}°F is ${degC}°C"
}


echo "Please select a conversion:"
echo "a. Convert Celsius to Fahrenheit"
echo "b. Convert Fahrenheit to Celsius"
read -r choice

if [[ "$choice" == "a" ]]; then
  echo "Please enter a temperature value in Celsius (between 0°C and 100°C):"
  read -r temp
  if (( temp < FREEZING_POINT_C || temp > BOILING_POINT_C )); then
    echo "Error: temperature value must be between 0°C and 100°C"
    exit 1
  fi
  celsius_to_fahrenheit "$temp"
else
  echo "Please enter a temperature value in Fahrenheit (between 32°F and 212°F):"
  read -r temp
  if (( temp < FREEZING_POINT_F || temp > BOILING_POINT_F )); then
    echo "Error: temperature value must be between 32°F and 212°F"
    exit 1
  fi
  fahrenheit_to_celsius "$temp"
FREEZING_POINT_C=0
FREEZING_POINT_F=32
BOILING_POINT_C=100
BOILING_POINT_F=212

function celsius_to_fahrenheit {
  local celsius=$1
  local degF=$(echo "scale=2; ($celsius*9/5)+32" | bc)
  echo "${celsius}°C is ${degF}°F"
}
function fahrenheit_to_celsius {
  local fahrenheit=$1
  local degC=$(echo "scale=2; ($fahrenheit-32)*5/9" | bc)
  echo "${fahrenheit}°F is ${degC}°C"
}

echo "Please select a conversion:"
echo "a. Convert Celsius to Fahrenheit"
echo "b. Convert Fahrenheit to Celsius"
read -r choice

if [[ "$choice" == "a" ]]; then
  echo "Please enter a temperature value in Celsius (between 0°C and 100°C):"
  read -r temp
  if (( temp < FREEZING_POINT_C || temp > BOILING_POINT_C )); then
    echo "Error: temperature value must be between 0°C and 100°C"
    exit 1
  fi
  celsius_to_fahrenheit "$temp"
else
  echo "Please enter a temperature value in Fahrenheit (between 32°F and 212°F):"
  read -r temp
  if (( temp < FREEZING_POINT_F || temp > BOILING_POINT_F )); then
    echo "Error: temperature value must be between 32°F and 212°F"
    exit 1
  fi
  fahrenheit_to_celsius "$temp"
fi
