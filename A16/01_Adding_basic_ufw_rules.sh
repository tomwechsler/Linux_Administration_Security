#Working on ubuntu in a root session

sudo -i

#The status
ufw status

#What is the default (DROP!)
less /etc/default/ufw

#IMPORTANT - otherwise we are not able to ssh into the system
ufw allow ssh

#The status
ufw status

#Enable the firewall
ufw enable

#The status verbose
ufw status verbose

#The status numbered
ufw status numbered





The main command is ufw, status will show the current settings, we can add the numbered
option which can be useful when deleting rules or the verbose option to print more details.