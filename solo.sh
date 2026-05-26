#!/bin/bash

# Colors
RED='\033[1;31m'
GREEN='\033[1;32m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Hacker Style Boot Screen
clear
echo -e "${GREEN}"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
figlet "SOLO"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "${NC}"

# Fake System Loading
echo -ne "${CYAN}[+] Initializing Hacking Interface"
for i in {1..6}
do
    echo -ne "."
    sleep 0.4
done
echo ""

echo -ne "${CYAN}[+] Connecting To Secure Server"
for i in {1..5}
do
    echo -ne "."
    sleep 0.4
done
echo ""

echo -e "${GREEN}[✓] Access Granted${NC}"
sleep 1
clear

while true
do
    echo -e "${GREEN}╔══════════════════════════════╗${NC}"
    echo -e "${GREEN}║${YELLOW}       SOLO TOOLS        ${GREEN}║${NC}"
    echo -e "${GREEN}╚══════════════════════════════╝${NC}"
    echo ""

    echo -e "${CYAN}[1]${NC} Nmap Scan"
    echo -e "${CYAN}[2]${NC} Directory Bruteforce"
    echo -e "${CYAN}[3]${NC} Whois Lookup"
    echo -e "${CYAN}[4]${NC} Exit Terminal"
    echo ""

    read -p "root@solo:~# " option

    case $option in

        1)

    echo ""
    read -p "Target IP: " target
    echo -e "${YELLOW}[SCANNING] Launching Nmap Service & Version Scan...${NC}"
    sleep 1
    nmap -sCV $target
    ;;

        2)
            echo ""
            read -p "Target URL: " url
            echo -e "${YELLOW}[SCANNING] Running Gobuster...${NC}"
            sleep 1
            gobuster dir -u $url -w /usr/share/wordlists/dirb/common.txt
            ;;

        3)
            echo ""
            read -p "Target Domain: " domain
            echo -e "${YELLOW}[INFO] Fetching Whois Data...${NC}"
            sleep 1
            whois $domain
            ;;

        4)
            echo -e "${RED}[SYSTEM] Disconnecting...${NC}"
            sleep 1
            exit
            ;;

        *)
            echo -e "${RED}[ERROR] Invalid Command!${NC}"
            ;;
    esac

    echo ""
    read -p "Press Enter To Return..."
    clear
done
