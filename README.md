# Install and use openVPN on UBUNTU without any problem

[![Say Thanks!](https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg)](https://saythanks.io/to/hibare)

This repository contains scripts that installs openVPN and set it up by downloading ovpn files from vpnbook. It also create commands to easily start and stop the VPN.

This repository contains two files: install.sh and uninstall.sh. These files does what their name suggest.
The src directory contains the scripts to start, stop and check status of the VPN.

## Installation
To install and configure openVPN, execute install.sh file using following command:
```shell
sudo sh install.sh
```
> Note: A working internet connection is required for successful installation.

![](http://hibare.in/img/github/openvpn3.png)

## Uninstalltion
To uninstall openVPN, execute uninsall.sh file using following command:
```shell
sudo sh uninstall.sh
```

![](http://hibare.in/img/github/openvpn2.png)

> Note:
> 1. Installation process generate a log file named installLogs.txt, which contains all the installation logs.
> 2. Uninstallation process also generates a log file name uninstallLogs.txt, which contains all the uninstallation logs.

> For any feedback, suggestion and queries please [Click here](http://hibare.in) and click on contact at upper-left corner.


