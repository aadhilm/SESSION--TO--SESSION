# SESSION--TO--SESSION

[![Apache License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Network Tools](https://img.shields.io/badge/Network-Tools-5391FE?logo=network)](https://github.com/topics/network-tools)
[![SSH Ready](https://img.shields.io/badge/SSH-Ready-4EAA25?logo=ssh)](https://github.com/topics/ssh)
[![FTP Support](https://img.shields.io/badge/FTP-Supported-FF6E00?logo=ftp)](https://github.com/topics/ftp)
[![Netcat Enabled](https://img.shields.io/badge/Netcat-Enabled-46a2f1)](https://github.com/topics/netcat)

## ⚠️ Disclaimer
**We are not responsible for any kind of misuse or damage caused by this program.**  
Use this tool at your own risk!

## 🎯 Introduction
**SESSION--TO--SESSION** is an interactive command-line tool designed to simplify network-related tasks through a user-friendly, menu-based interface. 

Key benefits:
- Quickly establish terminal-to-terminal connections
- Perform seamless file transfers
- Interact with network services efficiently
- Streamlines SSH, FTP, and Netcat workflows
- Ideal for both beginners and experienced users

## 🔧 Features

### System Information
- Displays local IP address
- Shows basic network configuration

### Network Tools
#### SSH Connection
- Connect to remote servers using SSH
- Customizable parameters:
  - Username
  - Server IP/hostname
  - Port selection (22 or 8022)
- Review and modify connection details before execution

#### FTP Connection
- Connect to FTP servers
- Simple editing options for server details
- User-friendly interface

#### Netcat (NC) Connection
Multiple functionalities:
- Listen on specified ports
- Send files to target IP
- Receive files by port listening
- Input validation before execution

#### Android SSHd
- Start SSHd service on Android devices
- Display current user and network info
- Uses `whoami` and `ifconfig`

## 🚀 Installation

### 📦 Requirements
Ensure these packages are installed:
- `ssh`
- `ftp` 
- `netcat`

#### Manual Installation

# Debian/Ubuntu
```bash
sudo apt install openssh-client ftp netcat
```

Open terminal and type the following commands:

Clone the repository:
```bash
git clone https://github.com/aadhilm/SESSION--TO--SESSION.git
cd SESSION--TO--SESSION
chmod +x main
./install.sh  # For automatic dependencies
```
🏃 Run Command
`./session`

📋 Tool Categories

SESSION--TO--SESSION is divided into the following categories:

SSH Connection : Quickly connect to remote servers.

FTP Connection : Manage FTP server connections.

Netcat Connection : Simplified file transfer and listening.

Android SSHd: Start the SSHd service and view system information.

System Information : Display system IP address.


## 🧑‍💻 Used For :

System Administrators: Easily access common network utilities without typing complex commands repeatedly.

Beginners: A great tool for learning and practicing basic networking commands in a structured environment.

Productivity Enthusiasts: Streamline workflows by integrating multiple tools under one menu for easier navigation and task execution.


## 📝 License

This project is open-source and licensed under the Apache License 2.0.

## 🤝 Contributing

Feel free to contribute to the repository by submitting issues or creating pull requests to add more features or improve functionality.
