isPresent=1
checkAttendance=$((RANDOM%2))
if [ $isPresent -eq $checkAttendance ]
then
echo "Employee is Present"
else
echo "Absent"
fi

#!/bin/bash

# Constants
full_time_hours=8
part_time_hours=4
wage_per_hour=20
max_hours=100
max_days=20

# Function to calculate daily wage
calculate_wage() {
    local hours_worked=$1
    echo $((wage_per_hour * hours_worked))
}

total_hours=0
total_days=0

# Loop until either max hours or max days are reached
while [ $total_hours -lt $max_hours ] && [ $total_days -lt $max_days ]; do
    read -p "Enter employee type (full-time or part-time): " employee_type

    case $employee_type in
        "full-time")
            daily_wage=$(calculate_wage $full_time_hours)
            ((total_hours += full_time_hours))
            ;;
        "part-time")
            daily_wage=$(calculate_wage $part_time_hours)
            ((total_hours += part_time_hours))
            ;;
        *)
            echo "Invalid employee type entered."
            continue  # Skip the rest of the loop and start a new iteration
            ;;
    esac

    ((total_days++))

    echo "Daily Wage: $daily_wage | Total Hours: $total_hours | Total Days: $total_days"
done

echo "Wages calculated until either $max_hours hours or $max_days days are reached."
