#wget https://github.com/${GitUser}/
GitUser="Kulanbagong1"
#IZIN SCRIPT
MYIP=$(curl -sS ipv4.icanhazip.com)
echo -e "\e[32mloading...\e[0m"
clear
# Valid Script
VALIDITY () {
    today=`date -d "0 days" +"%Y-%m-%d"`
    Exp1=$(curl https://raw.githubusercontent.com/${GitUser}/izinn/main/ipvps.conf | grep $MYIP | awk '{print $4}')
    if [[ $today < $Exp1 ]]; then
    echo -e "\e[32mYOUR SCRIPT ACTIVE..\e[0m"
    else
    echo -e "\e[31mYOUR SCRIPT HAS EXPIRED!\e[0m";
    echo -e "\e[31mPlease renew your ipvps first\e[0m"
    exit 0
fi
}
IZIN=$(curl https://raw.githubusercontent.com/${GitUser}/izinn/main/ipvps.conf | awk '{print $5}' | grep $MYIP)
if [ $MYIP = $IZIN ]; then
echo -e "\e[32mPermission Accepted...\e[0m"
VALIDITY
else
echo -e "\e[31mPermission Denied!\e[0m";
echo -e "\e[31mPlease buy script first\e[0m"
exit 0
fi
echo -e "\e[32mloading...\e[0m"
clear
NC='\e[0m'
DEFBOLD='\e[39;1m'
RB='\e[31;1m'
GB='\e[32;1m'
YB='\e[33;1m'
BB='\e[34;1m'
MB='\e[35;1m'
CB='\e[35;1m'
WB='\e[37;1m'
clear
NUMBER_OF_CLIENTS=$(grep -c -E "^#&@ " "/usr/local/etc/xray/config.json")
if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
clear
echo -e "${RB}————————————————————————————————————————————————————${NC}"
echo -e "                  ${WB}Log All Xray Account${NC}                 "
echo -e "${RB}————————————————————————————————————————————————————${NC}"
echo -e "  ${YB}You have no existing clients!${NC}"
echo -e "${RB}————————————————————————————————————————————————————${NC}"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
log-create
fi
clear
echo -e "${RB}————————————————————————————————————————————————————${NC}"
echo -e "                  ${WB}Log All Xray Account${NC}                 "
echo -e "${RB}————————————————————————————————————————————————————${NC}"
echo -e " ${YB}User  Expired${NC}  "
echo -e "${RB}————————————————————————————————————————————————————${NC}"
grep -E "^#&@ " "/usr/local/etc/xray/config.json" | cut -d ' ' -f 2-3 | column -t | sort | uniq
echo ""
echo -e "${YB}tap enter to go back${NC}"
echo -e "${RB}————————————————————————————————————————————————————${NC}"
read -rp "Input Username : " user
if [ -z $user ]; then
log-create
else
clear
echo -e "`cat "/user/log-allxray-$user.txt"`"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
log-create
fi
