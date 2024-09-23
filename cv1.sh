# zjistit porty
ip a

# pridat adresu portu
sudo ip address add 10.0.0.1/24 dev eth1

# ping
ping 10.0.0.4


# minicom
sudo minicom
enter
enter the initial configuration dialog? no

# presun do privilegovane rezimu
enable

# presun do config
configure terminal

# vraceni se 
exit

# pro odstraneni dat pred prikaz
no

# prejmenovani v config
hostname sw2

# zobrazit mac
show mac address-table dynamic


show interfaces status
show ip interface brief