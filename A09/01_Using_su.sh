#Working on alma with the following preperation steps

sudo passwd vagrant
sudo usermod -aG wheel vagrant
exit
vagrant ssh alma

#What if have done
history

#Set the root password (the vagrant box comes without root pw)
sudo passwd root

#Substitute user (no complete login shell)
su

#The environment
pwd

id

echo $USER

ps

exit

#Check with ps
ps

#A full login
su -

pwd

echo $USER

#Create the a user
useradd -m Bob -s /bin/bash

#Switch to Bob without a password
su - bob

pwd

exit

exit

#Switch to Bob without a password
sudo su - bob

exit

#Lock the root account (for security)
sudo passwd -l root

#Check
su - root



Using the command su we can change to the root account, or any account that we have the
password for. If the root account does not have a password, then this is not an option. We can
just change to the account, or we can execute a full login.