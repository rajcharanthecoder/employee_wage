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

part_time_hours=4
wage_per_hour=20

# Function to calculate daily wage

part_time_wage=$((part_time_hours*wage_per_hour))

echo "Part-time Employee Daily Wage: $part_time_wage"
