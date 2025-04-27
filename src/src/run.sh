#!/bin/bash

# Colors
YELLOW='\033[1;33m'
NC='\033[0m' # No Color
GREEN='\033[0;32m'

# Banner
clear
echo -e "
 _   _           _     _____                 _                                  _   
| \\ | |         | |   |  __ \\               | |                                | |  
|  \\| | _____  _| |_  | |  | | _____   _____| | ___  _ __  _ __ ___   ___ _ __ | |_ 
| . \` |/ _ \\ \\/ / __| | |  | |/ _ \\ \\ / / _ \\ |/ _ \\| '_ \\| '_ \` _ \\ / _ \\ '_ \\| __|
| |\\  |  __/>  <| |_  | |__| |  __/\\ V /  __/ | (_) | |_) | | | | | |  __/ | | | |_ 
|_| \\_|\\___/_/\\_\\\\__| |_____/ \\___| \\_/ \\___|_|\\___/| .__/|_| |_| |_|\\___|_| |_|\\__|
                                                  | |                                
                                                  |_|                                
${YELLOW}🔥 SUPAR GOD MODE VPS & NETWORK OPTIMIZER ⚡
             🛡 MADE BY NINJA${NC}
"

# Menu
echo ""
echo -e "${YELLOW}Choose your GOD MODE OPTION:${NC}"
echo ""
echo -e "1️⃣  SETUP Hibernate ⚙️"
echo ""
read -p "Enter choice [1]: " choice

# Default to 1 if empty
choice=${choice:-1}

if [ "$choice" -eq 1 ]; then
    echo -e "${GREEN}Starting Hibernate Setup...${NC}"
    
    FOLDER="/var/lib/pterodactyl/volumes"

    while true
    do
        for folder in "$FOLDER"/*/
        do
            if [ -d "$folder" ] && [ ! -f "$folder/plugins/HibernateX.jar" ]
            then
                echo -e "${GREEN}Copying HibernateX.jar to $folder/plugins/...${NC}"
                cp -v /var/lib/pterodactyl/volumes/HibernateX.jar "$folder/plugins/"
            fi
        done

        sleep 10
    done
else
    echo -e "${YELLOW}Invalid option! Exiting...${NC}"
    exit 1
fi
