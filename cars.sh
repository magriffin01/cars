#! /bin/bash
# cars.sh
# Mark Griffin

choice=0
while [ "$choice" -ne 3 ]
do
	echo "Type 1 to enter a new car. Type 2 to display the list of cars. Type 3 to quit the program.: "
	read choice
	case "$choice" in
		"1") echo "Enter the year of the car: " 
			read year
			echo "Enter the make of the car: "
			read make
			echo "Enter the model of the car: "
			read model
			echo "$year:$make:$model">>My_old_cars;;
		"2") sort My_old_cars;;
		"3") echo "Goodbye";;
	esac
done

