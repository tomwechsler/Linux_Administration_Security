#Working on alma with the following prep steps

sudo passwd vagrant
sudo usermod .aG wheel vagrant
exit
vagrant ssh alma

#What if have done
history


su

su -

su -l

su - bob



Using the command su we can change to the root account, or any account that we have the
password for. If the root account does not have a password, then this is not an option. We can
just change to the account, or we can execute a full login.