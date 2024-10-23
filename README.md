# Nmap Scan Bash Script

This is a simple Bash script that helps you run `nmap` network scans by prompting you for the necessary inputs, such as target IP/hostname, scan type, and port range.

## What is Nmap?

`Nmap` (Network Mapper) is a tool used for network discovery and security auditing. It helps identify open ports, running services, and the security status of hosts on a network.

## Script Overview

This script makes it easier to use `nmap` by asking you to input:
- A **target IP address or hostname**.
- The **type of scan** you want to perform (e.g., SYN scan, UDP scan).
- An optional **port range** (e.g., ports `1-1000`).

The script then runs the `nmap` command with these options and shows the results in the terminal.

## How to Use

### 1. Make the Script Executable

First, download the script and make it executable by running:

```bash
chmod +x nmap_scan.sh
