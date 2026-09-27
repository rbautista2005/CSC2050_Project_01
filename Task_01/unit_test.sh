#!/bin/bash

if [ "$#" -ne 3 ]; then
        echo "Error: Exactly three arguments must be provided."
        exit 1
fi

program="$1"
argument="$2"
expected="$3"

if [ ! -f "$program" ]; then
        echo "Error: The program '$program' does not exist."
        exit 1
fi

if [ ! -x "$program" ]; then
        echo "Error: The program '$program' is not executable."
        exit 1
fi

actual=$("$program" "$argument")

if [ "$actual" = "$expected" ]; then
        echo "PASS"
else
        echo "FAIL"
        echo -e "Expected: $expected"
        echo -e "Got: $actual"
fi
