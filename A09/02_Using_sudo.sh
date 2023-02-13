#Working on alma

#Set the password for the user bob (--stdin works not on ubuntu)
echo 'P@ssw0rd' | sudo passwd --stdin bob

#Create an other user
sudo useradd -m tux -s /bin/bash

#Set the password for the user tux (--stdin works not on ubuntu)
echo 'P@ssw0rd' | sudo passwd --stdin tux

#List the content
sudo less /etc/sudoers

sudo grep -vE '^(#|$)' /etc/sudoers

#Syntax check!!
sudo visudo

#Under the wheel group
bob ALL(ALL) ALL #This is not correct

#Do not use the (Q)uit option
bob ALL=(ALL) ALL

#Whats in the sudoers.d
sudo ls /etc/sudoers.d/

#Create a new file
sudo visudo -f /etc/sudoers.d/tux

tux ALL=(root) NOPASSWD: /usr/bin/passwd, !/usr/bin/passwd root #change passwords, except for root

#Save and exit

#Lets check
sudo su - bob

sudo -l

exit

sudo su - tux

sudo -l

sudo passwd bob

sudo passwd root #this will not work

exit


Using sudo, we can delegate administrative tasks without the need to divulge the root
password or give access to all commands

Using the command visudo to make changes to the configuration will enforce a syntax check
when the file is saved. A misconfigured sudo entry will disable sudo access to your system.