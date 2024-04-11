#!/bin/bash

# Function to check if a package version is available
check_package_version() {
    package="$1"
    version="$2"
    
    if pip show "$package" | grep -q "Version: $version"; then
        echo "$package version $version is available."
    else
        echo "$package version $version is not available."
    fi
}

# Read the requirements.txt file line by line
while IFS= read -r line; do
    # Skip empty lines and comments
    if [[ -n "$line" && ! "$line" =~ ^\ *# ]]; then
        # Split the line into package name and version
        package=$(echo "$line" | cut -d '=' -f 1)
        version=$(echo "$line" | cut -d '=' -f 2)
        # Check if the package version is available
        check_package_version "$package" "$version"
    fi
done < requirements.txt

