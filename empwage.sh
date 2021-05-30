#! /bin/bash -x


echo "Wlecome to Employ Wage Computation Problem."

absent=0
present=1
part_time=2

check=$((RANDOM%3))

if [ $check -eq 0 ]
then
echo "employe is absent."

elif [ $check -eq 1 ]
then
echo "employe is present."

else echo "employe is present part-time."
fi


wege_pe_hr=20
full_time_hr=8
part_time_hr=4



case $check in

	$absent)	empHr=0 ;;
	$present)	empHr=8 ;;
	$part_time) 	empHr=4 ;;

esac

echo "Employe hours of the day is $empHr. "

