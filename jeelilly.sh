#!/bin/bash

# Jeelilly Multi-Tool Script for Termux
clear
echo -e "\e[1;31m"
figlet -f slant "JEELILLY"
echo -e "====================================================="
echo -e "        JEELILLY - 20 IN 1 WIFI HACKING SUITE        "
echo -e "====================================================="
echo -e "\e[1;33m [ 1] Aircrack-ng     - Wireless Security Auditor"
echo -e " [ 2] Reaver          - WPS Pin Cracker"
echo -e " [ 3] Wifite          - Automated Wireless Auditor"
echo -e " [ 4] Kismet          - Wireless Sniffer & Detector"
echo -e " [ 5] MDK4            - Wi-Fi Stress Testing Tool"
echo -e " [ 6] Pixiewps        - WPS Pixie-Dust Attack Tool"
echo -e " [ 7] Bully           - WPS Brute Force Tool"
echo -e " [ 8] Bettercap       - Network Attack & Monitoring"
echo -e " [ 9] Nmap            - Network & Port Scanner"
echo -e " [10] Netcat          - Networking Utility"
echo -e " [11] Wireshark (CLI) - Packet Analyzer (Tshark)"
echo -e " [12] Macchanger      - MAC Address Spoofing"
echo -e " [13] Hydra           - Network Login Cracker"
echo -e " [14] Arpspoof        - ARP Poisoning Tool"
echo -e " [15] Dsniff          - Password Sniffer"
echo -e " [16] Tcpdump         - Packet Dumper"
echo -e " [17] Slowloris       - DoS Attack Tool"
echo -e " [18] Nikto           - Web Server Scanner"
echo -e " [19] SQLMap          - SQL Injection Tool"
echo -e " [20] Exit Tool       - Quit Jeelilly Suite\e[0m"
echo -e "\e[1;31m=====================================================\e[0m"

read -p "Select a tool [1-20]: " choice

case $choice in
    1) aircrack-ng --help ;;
    2) reaver --help ;;
    3) wifite ;;
    4) kismet ;;
    5) mdk4 --help ;;
    6) pixiewps ;;
    7) bully --help ;;
    8) bettercap ;;
    9) read -p "Enter Target IP: " ip; nmap -sV $ip ;;
    10) nc -h ;;
    11) tshark -h ;;
    12) macchanger --help ;;
    13) hydra -h ;;
    14) arpspoof -h ;;
    15) dsniff -h ;;
    16) tcpdump -h ;;
    17) python3 -m slowloris --help || echo "Slowloris needs to be installed." ;;
    18) read -p "Enter URL: " url; nikto -h $url ;;
    19) read -p "Enter URL: " sqlurl; sqlmap -u "$sqlurl" --batch ;;
    20) echo -e "\nExiting Jeelilly Suite. Goodbye!\n"; exit 0 ;;
    *) echo -e "\nInvalid Option! Please choose between 1 to 20." ;;
esac
