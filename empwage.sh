#! /bin/bash -x


echo "Wlecome to Employ Wage Computation Problem."



wege_pe_hr=20
full_time_hr=8
part_time_hr=4

max_working_days=20
max_working_hrs=100
total_working_days=0
total_working_hrs=0

while [ $total_working_days -lt $max_working_days ] && [ $total_working_hrs -le $max_working_hrs ]

do

empCheck=$((RANDOM%3))

absent=0
present=1
part_time=2
working_day=0



#if [ $check -eq 0 ]
#then
#echo "employe is absent."

#elif [ $check -eq 1 ]
#then
#echo "employe is present."

#else echo "employe is present part-time."
#fi

function emplyHrs() {

local empCheck=$1

case $empCheck in

	$absent)	empHr=0 ;;
	$present)	empHr=8 ;;
	$part_time) 	empHr=4 ;;

esac

	echo $empHr
}


	empHr=$( emplyHrs $empCheck)



total_working_days=$(($total_working_days + 1 ))
total_working_hrs=$(($total_working_hrs + $empHr ))

done

salary=$(($total_working_hrs * $wege_pe_hr ))

echo "wage of full month is $salary"
