# in minicom
# in terminal config
# enter vlan config
vtp mode transparent

# nastaveni vlan
vlan 30
name fialova
exit

vlan 50
name cervena
exit


int f0/1
switchport mode access
description PC2
switchport access vlan 50
exit

int range g0/1-2
switchport mode trunk
switchport trunk allowed vlan 30 # neni add, odebere vsechno a vlozi tohle
switchport trunk allowed vlan add 50
exit


show vlan
show interface trunk







#spanning tree
