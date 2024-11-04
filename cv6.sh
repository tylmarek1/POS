# nastaveni default gateway na pc
sudo ip route add default via 10.0.0.1

#v minicom 
interface g0/0/0
ip nat outside
no shutdown
ip address 120.0.0.2 255.255.255.240
exit

interface g0/0/1
ip nat inside
no shutdown
ip address 10.0.0.1 255.255.255.0
exit

# dynamicky nat
ip nat pool NATKA 9.0.0.1 9.0.0.5 netmask 255.255.255.248
access-list 1 permit 10.0.0.0 0.0.0.255
ip nat inside source list 1 pool NATKA overload

ip route 7.0.0.0 255.255.255.248 120.0.0.1

# staticky
ip nat inside source static 10.0.0.2 9.0.0.6
