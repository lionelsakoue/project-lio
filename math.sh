#!/bin/bash

echo " this is a mathematical operation "  

# Read two numbers from the user
echo "Enter first number:"
read num1
echo "Enter second number:"
read num2

# Perform addition
result=$((num1 + num2))

# Output the result
echo "The result of addition is: $result"

