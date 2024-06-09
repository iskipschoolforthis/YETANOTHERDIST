#!/bin/bash

# Function to get the package
get_package() {
    url="$1"
    wget "$url" -O package_download
}

# Function to extract the package
extract_package() {
    file_type=$(file package_download | awk '{print $2}')
    case "$file_type" in
        "gzip")
            tar -xzf package_download
            ;;
        "bzip2")
            tar -xjf package_download
            ;;
        "Zip")
            unzip package_download
            ;;
        "XZ")
            tar -xJf package_download
            ;;
        "POSIX")
            tar -xf package_download
            ;;
        *)
            echo "Unsupported package format: $file_type"
            exit 1
            ;;
    esac
}

# Function to build and install the package
build_install_package() {
    package_dir=$(tar -tf package_download | head -1 | cut -f1 -d"/")
    cd "$package_dir" || exit
    ./configure
    make
    make install
}

# Function to uninstall the package
uninstall_package() {
    package_dir=$(tar -tf package_download | head -1 | cut -f1 -d"/")
    cd "$package_dir" || exit
    make uninstall
}

# Main function
main() {
    if [ "$1" == "--uninstall" ]; then
        uninstall_package
    else
        get_package "$1"
        extract_package
        build_install_package
    fi
}

main "$@"
