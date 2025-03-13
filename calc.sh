#!/bin/bash

# Controleer of er een argument is gegeven
if [ "$#" -ne 1 ]; then
    echo "Gebruik: $0 'uitdrukking'"
    exit 1
fi

# Verkrijg de uitdrukking van de argumenten
expression="$1"

# Gebruik bc om de uitdrukking te evalueren
result=$(echo "scale=20; $expression" | bc -l)

# Toon het resultaat
echo "$expression = $result"
