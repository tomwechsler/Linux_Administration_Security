#Working on ubuntu in a root session

sudo -i

#The raw infos
ufw show raw

ufw show raw | less

#The added rules
ufw show added

#The rules in the filesystem
ls /etc/ufw

#Reset the ufw
ufw reset

#Check the status
ufw status


UFW is a firewall manager, the backend uses IPTables. We can also reset to the originally
settings.