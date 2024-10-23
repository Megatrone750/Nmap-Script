#!/bin/bash

# Function to take input and run nmap
run_nmap() {
    echo "Enter the target IP address or hostname:"
    read target

    echo "Do you want a scan type? (default is 'SYN scan') [y/n]:"
    read scan_type_choice

    scan_type=""
    if [ "$scan_type_choice" == "y" ]; then
        echo "Choose scan type: 
        1) SYN scan (-sS)
        2) UDP scan (-sU)
        3) Aggressive scan (-A)
        4) Ping scan (-sn)"
        read scan_type_option

        case $scan_type_option in
            1) scan_type="-sS" ;;
            2) scan_type="-sU" ;;
            3) scan_type="-A" ;;
            4) scan_type="-sn" ;;
            *) echo "Invalid option, defaulting to SYN scan (-sS)" 
               scan_type="-sS" ;;
        esac
    else
        scan_type="-sS"
    fi

    echo "Would you like to specify a port range? (e.g., 1-1000) [y/n]:"
    read port_choice

    port_range=""
    if [ "$port_choice" == "y" ]; then
        echo "Enter the port range (e.g., 1-1000):"
        read port_range
        port_range="-p $port_range"
    fi

    echo "Running nmap command..."
    
    # Run nmap command with user input
    nmap $scan_type $port_range $target
}

# Call the function to run the script
run_nmap
