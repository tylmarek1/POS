#acl (viz fotka)
ip access-list extended 100
permit icmp any host 1.1.1.1 echo
permit tcp any host 1.1.1.1 eq www
permit tcp any host 3.0.0.2 eq telnet
exit

ip access-list extended 101
permit icmp host 1.1.1.1 any eq www
permit tcp host 1.1.1.1 any echo-reply
permit tcp host 3.0.0.2 eq telnet any
exit

int g0/0/0
ip access-group 100 out
ip access-group 101 in