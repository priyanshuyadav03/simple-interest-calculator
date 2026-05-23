#!/bin/bash

# Simple Interest Calculator

echo "============================="
echo "  Simple Interest Calculator"
echo "============================="

# Take user input
echo "Enter Principal Amount:"
read principal

echo "Enter Rate of Interest (% per year):"
read rate

echo "Enter Time Period (in years):"
read time

# Calculate Simple Interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount
total=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display Results
echo "============================="
echo "Principal Amount : $principal"
echo "Rate of Interest : $rate%"
echo "Time Period      : $time years"
echo "-----------------------------"
echo "Simple Interest  : $simple_interest"
echo "Total Amount     : $total"
echo "============================="
