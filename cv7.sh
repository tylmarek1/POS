# nastaveni ip adress na porty a no shutdown
# RIP
router rip
network 10.0.0.0 #sit vedouci k dalsimu routru
network 10.0.0.4 #sit vedouci k dalsimu routru
passive-interface g0/1/0 #nastaveni passive na portu vedoucimu k pc
version 2
no auto-summary
exit

# RIPng
int g0/0/1
ipv6 rip 1 enable
exit
int g0/0/0
ipv6 rip 1 enable
exit

# pokud ipv6 routing is not enabled
# v (config)#
ipv6 unicast-routing

ipv6 router rip 1
redistribute connected metric 1
exit

# nastaveni ipv6 address na portech
int g0/0/1
ipv6 address 2001:CAFE::2/127

# je potreba nastavit ip addresy a konfigurovat porty routeru

#OSPF ipv4
# (config)#
router ospf 1
network 10.0.0.0 0.0.0.3 area 0 # ip adressa site a jeji wildcard maska
network 10.0.0.4 0.0.0.3 area 0 # ip adressa site a jeji wildcard maska
passive-interface g0/1/0 # passive port vedouci k pc
exit

#OSPF ipv6
ipv6 router ospf 1
router-id 6.6.6.6 # fiktivni ipv4 adressa
passive-interface g0/1/0 # passive port vedouci k pc
exit
int g0/0/0
ipv6 ospf 1 area 0
exit
int g0/0/1
ipv6 ospf 1 area 0
exit



