#!/bin/bash

# Addition
echo "Addition:"
a=10
b=5
sum=$((a + b))
echo "Sum: $sum"

# Subtraction
echo "Subtraction:"
difference=$((a - b))
echo "Difference: $difference"

# Multiplication
echo "Multiplication:"
product=$((a * b))
echo "Product: $product"

# Division
echo "Division:"
div=$((a / b))
echo "Division: $div"

# Modulus (Remainder)
echo "Modulus:"
mod=$((a % b))
echo "Modulus: $mod"

# Exponentiation (Using 'bc' for floating-point arithmetic)
echo "Exponentiation:"
echo "2^3 = $(echo '2^3' | bc -l)"
