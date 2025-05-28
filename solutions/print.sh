#!/usr/bin/env bash

# Function to print a greeting message
print_greeting() {
    echo "Hello from Bash!"
}

# Function to declare and print variables using printf
print_vars() {
    name="Bash"
    version="5.1"
    printf "Name: %s\nVersion: %s\n" "$name" "$version"
}

# Function to demonstrate escape sequences
print_escape() {
    echo -e "This is a line with a newline character:\nNew Line"
    echo -e "This line has a\ttab space."
    echo -e "\e[32mThis text is green.\e[0m"
}


# Call your functions
print_greeting
print_vars
print_escape

