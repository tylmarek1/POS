# pristup do root
sudo nautilus

ip a # zjisteni ip addressy

sudo service bind9 stop #zastaveni vychozi dns
sudo named -g # spusteni dns
sudo service bind9 restart

#configurace je na lms, ve 4 souborech