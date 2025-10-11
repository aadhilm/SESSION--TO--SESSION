#!/bin/bash

# Arrays to track installation results
installed=()
not_installed=()

# Function to check installation status
check_install() {
    for pkg in "$@"; do
        if command -v "$pkg" &>/dev/null; then
            installed+=("$pkg")
        else
            not_installed+=("$pkg")
        fi
    done
}

# Function to install packages on Termux
install_termux() {
    echo "Installing packages for Termux..."
    pkg update -y && pkg upgrade -y
    pkg install -y ftp netcat openssh
    check_install ftp nc ssh
    echo "Installation complete for Termux."
}

# Function to install packages on Fedora
install_fedora() {
    echo "Installing packages for Fedora..."
    sudo dnf install -y ftp nc openssh-clients
    check_install ftp nc ssh
    echo "Installation complete for Fedora."
}

# Function to install packages on Debian
install_debian() {
    echo "Installing packages for Debian..."
    sudo apt update -y
    sudo apt install -y ftp netcat openssh-client
    check_install ftp nc ssh
    echo "Installation complete for Debian."
}

# Check the operating system
if [[ -n "$TERMUX_VERSION" ]]; then
    install_termux
elif [[ -f /etc/fedora-release ]]; then
    install_fedora
elif [[ -f /etc/debian_version ]]; then
    install_debian
else
    echo "Unsupported Linux distribution."
    exit 1
fi

# Print installation results
echo -e "\n======================================"
echo -e "✅ Installed packages:"
printf '  - %s\n' "${installed[@]}"

echo -e "\n❌ Not installed packages:"
if [ ${#not_installed[@]} -eq 0 ]; then
    echo "  None — all installed successfully!"
else
    printf '  - %s\n' "${not_installed[@]}"
fi
echo "======================================"
