---
Certainly! Here are the instructions for the `build.sh` script:

### How to Use the `build.sh` Script

The `build.sh` script is used to build, install, and uninstall packages. Follow these steps to utilize the script:

1. **Download the Script**:
   - Ensure you have the `build.sh` script downloaded to your system.

2. **Place the Script in the Package Directory**:
   - Move the `build.sh` script to the directory containing the package you want to build, install, or uninstall.

3. **Make the Script Executable**:
   - Run the following command in your terminal to make the script executable:
     ```bash
     chmod +x build.sh
     ```

4. **Usage**:
   - The script can be used with different options:
     - `./build.sh`: This will build and install the package.
     - `./build.sh --uninstall`: This will uninstall the package.
   
5. **Customize as Needed**:
   - Customize the `build.sh` script as per your package's requirements. You may need to modify it to handle specific build, installation, or uninstallation steps.

> ***build.sh should be under every package_name/***

That's it! You have now learned how to use the `build.sh` script to build, install, and uninstall packages on your system. Adjust the script as necessary to suit your package's needs.

-
Repository Structure:
-
/usr/local/repos/
    ├── repo1/
    │   ├── packageA/
    │   │   ├── build.sh
    │   │   ├── version
    │   │   └── other files
    │   └── packageB/
    │       ├── build.sh
    │       ├── version
    │       └── other files
    ├── repo2/
    │   ├── packageC/
    │   │   ├── build.sh
    │   │   ├── version
    │   │   └── other files
    │   └── packageD/
    │       ├── build.sh
    │       ├── version
    │       └── other files
    └── blacklist.txt
-
