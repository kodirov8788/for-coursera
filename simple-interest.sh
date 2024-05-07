#!/bin/bash

# Simple Interest Calculator Script

# Function to calculate simple interest
calculate_simple_interest() {
    local principal=$1
    local rate=$2
    local time=$3
    local interest

    # Formula for simple interest: (P * R * T) / 100
    interest=$(( principal * rate * time / 100 ))

    echo "The simple interest for principal $principal at a rate of $rate% over $time years is: $interest"
}

# Check if the correct number of arguments were passed
if [ $# -ne 3 ]; then
    echo "Usage: $0 <principal> <rate> <time>"
    echo "Example: $0 1000 5 2"
    exit 1
fi

# Calling the function with the user inputs
calculate_simple_interest $1 $2 $3
