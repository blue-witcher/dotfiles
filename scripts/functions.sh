#!/bin/bash

## Function to determine the Linux distribution
detect_distro() {
    if [ -f /etc/os-release ]; then
        # Read the distribution information from /etc/os-release
        . /etc/os-release
        DISTRO=$NAME
        DISTRO_VERSION=$VERSION_ID
        DISTRO_FAMILY=$ID_LIKE
    elif [ -f /etc/lsb-release ]; then
        # Read the distribution information from /etc/lsb-release
        . /etc/lsb-release
        DISTRO=$DISTRIB_ID
        DISTRO_VERSION=$DISTRIB_RELEASE
    elif [ -f /etc/debian_version ]; then
        DISTRO="Debian"
        DISTRO_VERSION=$(cat /etc/debian_version)
        DISTRO_FAMILY="Debian"
    elif [ -f /etc/redhat-release ]; then
        DISTRO=$(cat /etc/redhat-release)
        DISTRO_VERSION=$(cat /etc/redhat-release | grep -oP '\d+(\.\d+)?')
    else
        DISTRO="Unknown"
        DISTRO_VERSION="Unknown"
    fi
    echo "Detected Linux distribution: $DISTRO"
    echo "Detected distro version: $DISTRO_VERSION"
}

## Function to ask the user a yes/no question
ask_user() {
    while true; do
        read -p "$1 (Y/n): " yn
        yn=${yn:-y}
        case $yn in
            [Yy] ) return 0;;
            [Nn] ) return 1;;
            * ) echo "Please answer yes or no.";;
        esac
    done
}

## Function to get the current user
get_current_user() {
    CURRENT_USER=$(whoami)
    echo "Current user: $CURRENT_USER"
}

## Function to find the place the script is located in
get_script_dir() {
	__SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
	echo "$__SCRIPT_DIR"
}
