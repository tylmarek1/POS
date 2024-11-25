#konfigurace portu mezi dalsim routrem a vntirni siti
ip dhcp pool <nazev>
network 30.0.0.0 255.255.255.0 #budou pridelovany adressy z tohodle rozsahu
domain vsb.cz
default-router #ip adressa portu slouzi jako default gaetway (30.0.0.1)
dns-server 1.1.1.1
exit
#nastavit statickou routu do sousednich siti

#na pc
#odpojit drat k internetu
sudo dhclient -r eth1
sudo dhclient eth1
# ziskame adresu z naseho dhcp