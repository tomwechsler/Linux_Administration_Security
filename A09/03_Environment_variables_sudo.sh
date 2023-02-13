#Working on alma

#Switch to a root session
sudo -i

#Install nano
dnf install -y nano

#Visudo still uses vim
visudo

#Set nano (it is not persistent)
export EDITOR=nano

visudo

#Set some defaults
visudo -f /etc/sudoers.d/defaults

Defaults env_keep += "EDITOR"

#Save and exit

exit

#Set the export
export EDITOR=nano

sudo visudo

sudo -l #we can see our config



In RedHat based systems the default editor will be vi, other distributions may use nano. You can
set the EDITOR variable but this needs to be allowed to pass though to sudo.