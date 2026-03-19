#!/bin/bash

# Script 5: Open Source Manifesto Generator
# Takes user input and generates a personalized text file.

echo "========================================"
echo "      OPEN SOURCE MANIFESTO MAKER"
echo "========================================"

read -rp "Enter your name: " name
read -rp "Why do you support open source? " reason
read -rp "What is your favorite open-source software? " software

output_file="open_source_manifesto.txt"

{
    echo "========================================"
    echo "         OPEN SOURCE MANIFESTO"
    echo "========================================"
    echo "Name: $name"
    echo
    echo "I support open-source software because $reason."
    echo "My favorite open-source software is $software."
    echo "I believe open source encourages freedom, learning, collaboration, and innovation."
    echo "========================================"
} > "$output_file"

echo
echo "Manifesto successfully saved in: $output_file"
echo "========================================"