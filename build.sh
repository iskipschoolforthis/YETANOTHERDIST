#!/bin/bash

# Function to extract the package and build it
extract_build_install() {
    package="$1"
    version="$2"
    package_dir="$3"

    # Extract package
    echo "Extracting package $package version $version..."
    tar -xzvf "$package_dir/$package-$version.tar.gz" -C /

    # Build package (if build script exists)
    if [ -x "$package_dir/$package/build.sh" ]; then
        echo "Running build script for package $package..."
        (cd "$package_dir/$package" && sh build.sh)
    fi
}

# Main function
main() {
    if [ $# -ne 3 ]; then
        echo "Usage: $0 [package_name] [version] [package_dir]"
        exit 1
    fi
    package="$1"
    version="$2"
    package_dir="$3"
    extract_build_install "$package" "$version" "$package_dir"
}

# Execute main function
main "$@"
