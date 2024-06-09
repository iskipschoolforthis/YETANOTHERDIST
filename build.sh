#!/bin/bash

# Function to fetch the package tarball, build, and install
fetch_build_install() {
    url="$example1"
    build_script="$example2"

    # Fetch package tarball
    echo "Fetching package from $url..."
    wget "$url" -O package.tar.gz

    # Run build script
    if [ -x "$build_script" ]; then
        echo "Running build script..."
        sh "$build_script"
    else
        echo "Build script not found."
        exit 1
    fi
}

# Main function
main() {
    if [ $# -ne 2 ]; then
        echo "Usage: $0 [url] [build_script]"
        exit 1
    fi
    url="$1"
    build_script="$2"
    fetch_build_install "$url" "$build_script"
}

# Execute main function
main "$@"

