#!/bin/bash
read -p "Enter a number: " num
is_prime=true

if ((num < 2)); then
    is_prime=false
fi

for ((i = 2; i <= num / 2; i++)); do
    if ((num % i == 0)); then
        is_prime=false
        break
    fi
done

if $is_prime; then
    echo "$num is prime."
else
    echo "$num is not prime."
fi
