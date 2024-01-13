isPresent=1
checkAttendance=$((RANDOM%2))
if [ $isPresent -eq $checkAttendance ]
then
echo "Employee is Present"
else
echo "Absent"
fi

wage_per_hour=20
full_day_hours=8

# Calculate daily wage
daily_wage=$((wage_per_hour * full_day_hours))

# Display the result
echo "Daily Employee Wage: $daily_wage"
