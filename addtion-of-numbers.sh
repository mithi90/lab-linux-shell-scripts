#!/bin/bash

# Input numbers
echo "Enter first number:"
read num1
echo "Enter second number:"
read num2

# Calculations
sum=$(echo "$num1 + $num2" | bc)
difference=$(echo "$num1 - $num2" | bc)
product=$(echo "$num1 * $num2" | bc)
quotient=$(echo "scale=2; $num1 / $num2" | bc)

# Display results
echo "Sum: $sum"
echo "Difference: $difference"
echo "Product: $product"
echo "Quotient: $quotient"
