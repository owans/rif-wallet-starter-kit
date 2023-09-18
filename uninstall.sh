#!/bin/bash

# Uninstall Ruby (if installed using RVM)
uninstall_ruby() {
    if command -v rvm &> /dev/null; then
        echo "Uninstalling Ruby..."
        rvm uninstall 2.7.6
        rvm implode
        gem uninstall cocoapods -aIx
    fi
}

# Uninstall CocoaPods
uninstall_cocoapods() {
    if command -v pod &> /dev/null; then
        echo "Uninstalling CocoaPods..."
        gem uninstall cocoapods -aIx
    fi
}

# Uninstall Watchman
uninstall_watchman() {
    if command -v watchman &> /dev/null; then
        echo "Uninstalling Watchman..."
        brew uninstall watchman
    fi
}

# Uninstall Yarn
uninstall_yarn() {
    if command -v yarn &> /dev/null; then
        echo "Uninstalling Yarn..."
        sudo npm uninstall -g yarn
    fi
}

# Uninstall tools in reverse order of installation
uninstall_ruby
uninstall_cocoapods
uninstall_watchman
uninstall_yarn

echo "Uninstallation completed."
