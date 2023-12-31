# RIF Wallet Starter kit

![RIF Wallet Banner](./src/rifwallet_custom%20(1).gif)

The RIF Wallet Starter Kit contains a setup script for installation of some of the tools and dependencies needed to set up and run the RIF Wallet App and RIF Wallet Services locally. This README contains a guide on how to run the setup scripts.

## Table of Contents

* [Introduction](#introduction)
* [What's included](#whats-included)
* [Tools](#tools)
* [Getting started](#getting-started)
* [Troubleshooting](#troubleshooting)
* [Uninstalling the tool](#uninstalling-the-tool)
* [Where to download?](#downloading-the-app)
* [Next steps](#next-steps)

## Introduction

RIF Wallet is an open source smart contract wallet which enables businesses to create and deploy fully customizable on-chain wallets. Easily build and deploy an on-chain wallet, using a set of wallet infrastructure APIs and libraries, the wallet features like the [RIF Relay](https://github.com/rsksmart/rif-relay) for payment of gas fees using ERC20 tokens, RNS [(RIF Name Service)](https://github.com/rsksmart/rns-manager-react) for sending and receiving crypto using a easy-to-remember nicknames.

Developers and businesses can now take advantage of the wallet smart contract capabilities, open source libraries and functionalities of RIF wallet to build and customize their own wallet in a few minutes.

See the [Developer Reference Guide]() section in the RIF Wallet Documentation for a step by step guide on how businesses can set up and customize the RIF wallet to suit their business needs.

For more information, see the [RIF Wallet Documentation]()

## What's included?

The setup script contains the following files;
* An `install` script to install some dependencies
* An `uninstall` script to uninstall the dependencies

## Tools

Note that the following tools and deps will be installed when the script is run:

* Homebrew
* Nodejs (v16+)
* Yarn
* Watchman
* Cocoapods
* Ruby

## Getting Started

This starter kit only downloads and installs the deps listed in [dependencies](#tools), you are required to manually download and install other tools deps not covered in the `install` script, this includes XCode, Android Studio, etc.

### Step 1: Clone this repo

```shell
git clone {repo url}
```
> Note: Ensure both install and uninstall scripts are in the same directory.

### Step 2: Open the bash/terminal

### Step 3: Starting the Shell Script

To start the shell script, please run the command below:

```shell
sh ./install.sh
```

This script checks if tool already exists, if not, it then downloads and install the tool.

## Uninstalling the tool

To uninstall, run the command below:

```shell
sh ./uninstall.sh
```

Note: This command uninstalls the tools listed in [Tools](#tools).

## Next steps
### Downloading the app

The RIF Wallet App is available for download on [IOS]() and the [Android]() app stores.

### Clone the Repos 

- [RIF Wallet](https://github.com/rsksmart/rif-wallet) and [RIF Wallet Services](https://github.com/rsksmart/rif-wallet-services) Repos.

### Download and Install deps 
- Ensure one of the following deps is installed, [XCode](https://itunes.apple.com/us/app/xcode/id497799835?mt=12) or [Android Studio](https://developer.android.com/studio) depending on your platform.

### Setup the RIF Wallet Services 

The RIF Wallet Services provide a basic account querying API to bootstrap your app.

See the guide on [How to setup and run the App with Local Services]() or use the [README](https://github.com/rsksmart/rif-wallet-services#readme)

### Setup the RIF Wallet App

The RIF Wallet is a Smart Wallet for Rootstock.

To start the smart wallet, ensure you are connected to the server locally by following the steps in [Running with Local Services](/README.md#setup-the-rif-wallet-services). Follow the steps below or see the setup instructions in the [README](https://github.com/rsksmart/rif-wallet#install-and-setup).

## Troubleshooting

> Error: Requirements installation failed with status: 1.
RVM is not a function, selecting rubies with 'rvm use ...' will not work.

You need to change your terminal emulator preferences to allow login shell.
Sometimes it is required to use `/bin/bash --login` as the command.
Please visit https://rvm.io/integration/gnome-terminal/ for an example.

To fix this, run the command below;

```shell
 /bin/bash --login
```

**Response:**

> The default interactive shell is now zsh.
To update your account to use zsh, please run `chsh -s /bin/zsh`.

Run the command: 

```shell
chsh -s /bin/zsh
```

> Response: Changing shell for $user. Enter password and you should have successfully run the installation script.

You should see a `Setup completed` response if installation was successful:

For more troubleshooting options, see the Developer Reference Section in the [RIF Wallet Documentation]().

## Frequently Asked Questions

* See the [FAQ]() section in the RIF Wallet Documentation.

## Contributing

Coming soon.

## Important Links
* [RIF Wallet App](https://github.com/rsksmart/rif-wallet)
* [RIF Wallet Services](https://github.com/rsksmart/rif-wallet-services)
* [Rootstock Developer Portal](https://dev.rootstock.io/)
* [RIF Wallet Libraries](https://github.com/rsksmart/rif-wallet-libs)