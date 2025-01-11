# #!/bin/bash

# # Exit immediately if a command exits with a non-zero status
# # set -e

# # Update package list and install necessary dependencies
# echo "Updating package list and installing required packages..."
# sudo apt update
# sudo apt install -y curl zip unzip vim


# echo "g++ installation..."
# sudo apt install -y build-essential g++-12
# sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-12 120
# sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-11 110
# sudo update-alternatives --set g++ /usr/bin/g++-12

# #echo 'export CFLAGS="$CFLAGS -std=c++20"' >> ~/.bashrc

# echo "Verilator installation..."
# sudo apt install -y ccache mold libgoogle-perftools-dev numactl perl-doc verilator


# # Install SDKMAN!
# echo "Installing SDKMAN!..."
# if [ ! -d "$HOME/.sdkman" ]; then
#     curl -s "https://get.sdkman.io" | bash
# else
#     echo "SDKMAN! is already installed. Initializing..."
# fi

# # Install Java, sbt, and Scala using SDKMAN!
# source "$HOME/.sdkman/bin/sdkman-init.sh"
# echo "Installing Java, sbt, and Scala..."
# sdk install java 23.0.1-oracle --default
# sdk install sbt 
# sdk install scala 2.13.15 --default

# # Download and install the latest release of Yosys
# # echo "Fetching and installing the latest release of Yosys..."
# # LATEST_URL=$(curl -s https://api.github.com/repos/YosysHQ/yosys/releases/latest | grep 'browser_download_url' | grep '.tar.gz' | cut -d '"' -f 4)
# # curl -L $LATEST_URL -o yosys-latest.tar.gz
# # mkdir -p yosys-latest
# # tar -xzf yosys-latest.tar.gz -C yosys-latest --strip-components=1
# # sudo cp yosys-latest/bin/* /usr/local/bin/
# # rm -rf yosys-latest yosys-latest.tar.gz

# # Ensure binaries are executable
# # echo "Setting permissions for binaries..."
# # sudo chmod +x /usr/local/bin/*

# source ~/.bashrc
echo "Setup completed successfully!"
