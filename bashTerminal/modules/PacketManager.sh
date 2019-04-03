#Description: Packet manager aka yum
clear
echo "Packet manager  menu"


install(){
  read -p "Enter name packet: " packet
  yum install $packet

}
delete(){
  read -p "Enter name packet: " packet
  yum --help


}


while true; do
  echo -e "1 Install\n2 Delete"
  read sel
  case $sel in
    1) install ;;
    0) break;;
    *) echo "Only 0 - 1";;
  esac

done











