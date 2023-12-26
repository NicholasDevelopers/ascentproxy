RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

clear
echo -e "${GREEN}Installing Proxy...${ENDCOLOR}"
sleep 1
if [ -f "ascent" ]; then
    echo -e "${RED}Deleting old proxy...${ENDCOLOR}"
    rm ascent
    sleep 1
    echo -e "${GREEN}Getting proxy...${ENDCOLOR}"
fi
wget -q https://github.com/NicholasDevelopers/ascentproxy/raw/main/ascent
wget -q https://github.com/NicholasDevelopers/ascentproxy/raw/main/items.dat
sleep 1
echo -e "${GREEN}Ascent Proxy & Items Dat Installed${ENDCOLOR}"
echo -e "${GREEN}Execute proxy with this command: ./ascent${ENDCOLOR}"
chmod +x ascent
