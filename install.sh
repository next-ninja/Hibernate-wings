#!/bin/bash

# Colors
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Check if root
if [ "$EUID" -ne 0 ]; then
  echo -e "${RED}❌ Please run as root.${NC}"
  exit 1
fi

# Banner
clear
echo -e "
  _   _           _     _____                 _                                  _   
 | \ | |         | |   |  __ \               | |                                | |  
 |  \| | _____  _| |_  | |  | | _____   _____| | ___  _ __  _ __ ___   ___ _ __ | |_ 
 | .  |/ _ \ \/ / __| | |  | |/ _ \ \ / / _ \ |/ _ \| '_ \| '_  _ \ / _ \ '_ \| __|
 | |\  |  __/>  <| |_  | |__| |  __/\ V /  __/ | (_) | |_) | | | | | |  __/ | | | |_ 
 |_| \_|\___/_/\_\\__| |_____/ \___| \_/ \___|_|\___/| .__/|_| |_| |_|\___|_| |_|\__|
                                                     | |                             
                                                     |_|                             
{YELLOW}🔥 SUPAR GOD MODE VPS & NETWORK OPTIMIZER ⚡
             🛡 MADE BY NINJA
${YELLOW}🔥 Installing Hibernate for Pterodactyl Wings...${NC}
"

echo -e "${YELLOW}➡️  Fixing Pterodactyl Nodes Overload in one script!${NC}"

# Download files
curl -L -o /var/lib/pterodactyl/volumes/run.sh https://raw.githubusercontent.com/VanshOPAlt/hibernate-wings/main/src/run.sh
curl -L -o /var/lib/pterodactyl/volumes/HibernateX.jar https://raw.githubusercontent.com/VanshOPAlt/hibernate-wings/main/src/HibernateX.jar

# Set permissions
chmod -R 777 /var/lib/pterodactyl/volumes

# Run script in background
nohup /var/lib/pterodactyl/volumes/run.sh > /dev/null 2>&1 & 

echo -e "${GREEN}✅ Hibernation for Pterodactyl Wings has been installed and started!${NC}"
