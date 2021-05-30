#! /bin/bash -x


echo "Wlecome to Employ Wage Computation Problem."

absent=0
present=1

check=$((RANDOM%2))

if [ $check -eq 0 ]
then
echo "employe is absent."

elif [ $check -eq 1 ]
then
echo "employe is present."
fi


wege_pe_hr=20
full_day_hr=8




