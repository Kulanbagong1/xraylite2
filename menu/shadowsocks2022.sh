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
echo -e "${RB}————————————————————————————————————————————————————————${NC}"
echo -e "          ${GB}----- [ Shadowsocks 2022 Menu ] -----${NC}         "
echo -e "${RB}————————————————————————————————————————————————————————${NC}"
echo -e ""
echo -e " ${GB}[1]${NC} ${YB}Create Account Shadowsocks 2022${NC} "
echo -e " ${GB}[2]${NC} ${YB}Trial Account Shadowsocks 2022${NC} "
echo -e " ${GB}[3]${NC} ${YB}Extend Account Shadowsocks 2022${NC} "
echo -e " ${GB}[4]${NC} ${YB}Delete Account Shadowsocks 2022${NC} "
echo -e " ${GB}[5]${NC} ${YB}Check User Login${NC} "
echo -e ""
echo -e " ${GB}[0]${NC} ${YB}Back To Menu${NC}"
echo -e ""
echo -e "${RB}————————————————————————————————————————————————————————${NC}"
echo -e ""
read -p " Select menu :  "  opt
echo -e ""
case $opt in
1) clear ; add-ss2022 ; exit ;;
2) clear ; trialss2022 ; exit ;;
3) clear ; extend-ss2022 ; exit ;;
4) clear ; del-ss2022 ; exit ;;
5) clear ; cek-ss2022 ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo -e "salah tekan " ; sleep 1 ; shadowsocks2022 ;;
esac
