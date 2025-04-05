#!/bin/bash

arithmatic_operations(){
echo "Choose Operations:
1.Addition
2.Substraction
3.Multiplication
4.Division"
read choice

case $choice in
1)
echo "Enter expression(e.g.,2+2):"
read expression
echo "$expression"|bc
;;
2)
echo "Enter expression(e.g.,2-2):"
read expression
echo "$expression"|bc
;;
3)
echo "Enter expression(e.g.,2*2):"
read expression
echo "$expression"|bc
;;
4)
echo "Enter expression(e.g.,2/2):"
read expression
echo "$expression"|bc
;;
esac
}

temperature_conversion(){
 echo "Choose conversion:
 1.Celsius to Fahrenheit
 2.Fahrenheit to Celsius"

read choice

case $choice in
1)echo "Enter temperature in Celsius:"
  read celsius
  echo "($celsius*9/5)+32"|bc
  ;;
2)echo "Enter temperature in Fahrenheit:"
  read fahrenheit 
  echo "($fahrenheit-32)*5/9"|bc
  ;;
*)echo "Invalid choice"
  ;;
  esac
}

area_calculation(){
echo "Enter radius of circle:"
read radius
echo "scale=2;3.14*($radius^2)"|bc
}

speed_calculation(){
echo "Enter distance(in meters):"
read distance
echo "Enter time(in seconds):"
read time
echo "scale=2;$distance/$time"|bc
}

percentage_calculation(){
echo "Enter total value:"
read total
echo "Enter percentage:"
read percentage
echo "scale=2;($total*$percentage)/100"|bc
}

time_calculation(){
echo "Enter distance(in meters):"
read distance
echo "Enter time(in meters/seconds):"
read speed
echo "scale=2;$distance/$speed"|bc
}

while true;do
echo "Choose Operations:
1.Arithmatic Operations
2.Temperature Conversion
3.Area Calculation
4.Speed Calculation
5.Percentage Calculation
6.Time Calculation
7.Exit"

read choice

case $choice in
1)arithmatic_operations;;
2)temperature_conversion;;
3)area_calculation;;
4)speed_calculation;;
5)percentage_calculation;;
6)time_calculation;;
7)exit;;
*)echo "Invalid choice"
  ;;
  esac
done

