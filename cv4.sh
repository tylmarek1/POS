#v minicom v config, podle router
interface fastEtherner 0/0
interface gigabitEtherner 0/0/0
#nastaveni router
interface g0/0/0
description C2A
no shutdown
ip address 10.0.0.10 255.255.255.252


#nastaveni spojeni s pc
show ip interface brief
# muj pc ma up up
int f0/0/3
switchport mode access
switchport access vlan 2
exit
interface vlan 2
ip address 10.0.2.1 255.255.255.0

#statisticke routovani
ip route <cilova sit> <maska> <brana (dalsi router v siti)>
