#!/bin/bash

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "Homebrew is not installed. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

# Check if Node.js version 16+ is installed
node_version=$(node -v)
required_node_version="v16.0.0"
if [[ "$(printf '%s\n' "$required_node_version" "$node_version" | sort -V | head -n1)" != "$required_node_version" ]]; then
    echo "Node.js version 16 or higher is not installed. Installing Node.js..."
    brew install node@16
else
    echo "Node.js version 16 or higher is already installed."
fi

# Install Yarn
if ! command -v yarn &> /dev/null; then
    echo "Yarn is not installed. Installing Yarn..."
    sudo npm install -g yarn
else
    echo "Yarn is already installed."
fi

# Install Watchman
if ! command -v watchman &> /dev/null; then
    echo "Watchman is not installed. Installing Watchman..."
    brew install watchman
else
    echo "Watchman is already installed."
fi

# Install CocoaPods
if ! command -v pod &> /dev/null; then
    echo "CocoaPods is not installed. Installing CocoaPods..."
    gem install cocoapods
    pod setup
else
    echo "CocoaPods is already installed."
fi

# Check if Ruby version 2.7.6+ is installed
ruby_version=$(ruby -v | awk '{print $2}')
required_ruby_version="2.7.6"
if [[ "$(printf '%s\n' "$required_ruby_version" "$ruby_version" | sort -V | head -n1)" != "$required_ruby_version" ]]; then
    echo "Ruby version 2.7.6 or higher is not installed. Installing Ruby using RVM..."
    if ! command -v rvm &> /dev/null; then
        echo "RVM is not installed. Installing RVM..."
        \curl -sSL https://get.rvm.io | bash -s stable
        source ~/.rvm/scripts/rvm
    fi
    rvm install 2.7.6
    rvm use 2.7.6 --default
else
    echo "Ruby version 2.7.6 or higher is already installed."
fi

echo "Setup completed."
