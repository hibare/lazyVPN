#!/bin/sh

#Constants
checkMark='✔'
arrowMark='>'
skullMark='☠'

#Declaring color variables
CYAN='\033[0;36m'       #CYAN COLOUR
NC='\033[0m'            #NO COLOUR
GREEN='\033[0;32m'      #GREEN COLOUR
RED='\033[0;31m'        #RED COLOUR
YELLOW='\033[1;33m'		#YELLOW COLOUR
MAGENTA='\033[95m'		#MAGENTA COLOUR

#Clear terminal screen
clear

#Banner
echo "======================================================"
echo "+               Establishing tunnel                  +"
echo "======================================================"                                                  
echo "
	 ${CYAN}.o88b. d8888b.  .o888b. .d888b. db    db 
	d8P  Y8 88  \`8D d8'   Y8 VP  \`8D \`8b  d8' 
	${GREEN}}8P      88oobY' 8P db dP    odD'  \`8bd8'  
	8b      88\`8b   8b V8o8P  .88'      88    
	${CYAN}Y8b  d8 88 \`88. Y8.    d j88.       88    
	 \`Y88P' 88   YD  \`Y888P' 888888D    YP    
		  ${NC}"                                                     
echo "======================================================"
echo "  ${MAGENTA}Developed by ${NC}: Shubham Hibare (CR@2Y)"
echo "  ${MAGENTA}Website      ${NC}: http://hibare.in"  
echo "  ${MAGENTA}Github       ${NC}: https://hibare.github.io/"
echo "  ${MAGENTA}Linkedin     ${NC}: https://linkedin.com/in/hibare"
echo "======================================================"

#Test for root
echo "${CYAN}[ $arrowMark ] Checking for root ...${NC}"
if [ `id -u` != 0 ]; then
	echo "${RED}[ $skullMark ] ALERT ... got root?${NC}"
	exit 1
fi
sleep 2
echo "${GREEN}[ $checkMark ] Root user found ${NC}"

if ! pgrep openvpn > /dev/null
then 
	echo "${GREEN}[ $arrowMark ] Tunnel un-available... ${NC}"
	exit 0
else
	echo "${CYAN}[ $arrowMark ] Closing tunnel ... ${NC}"
	pkill openvpn
fi

sleep 2


if ! pgrep openvpn > /dev/null
then
	echo "${GREEN}[ $checkMark ] Tunnel closed...${NC}"
else
	echo "${RED}[ $skullMark ] Tunnel intact...${NC}"
fi
