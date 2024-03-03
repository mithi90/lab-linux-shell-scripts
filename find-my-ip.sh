#!/bin/bash

# Get the public IP address
ip=$(curl -s https://api.ipify.org)

# Use ipinfo.io to get location information
location=$(curl -s https://ipinfo.io/$ip/json)

# Extract relevant information from the JSON response
city=$(echo $location | jq -r '.city')
region=$(echo $location | jq -r '.region')
country=$(echo $location | jq -r '.country')
postal=$(echo $location | jq -r '.postal')
org=$(echo $location | jq -r '.org')

# Display the location information
echo "Your IP address is: $ip"
echo "Location: $city, $region, $country, $postal"
echo "Organization: $org"
