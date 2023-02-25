#Working on alma (two ssh sessions)

sudo passwd vagrant

sudo useradd -aG wheel vagrant

exit

vagrant ssh alma

#List polkit actions
pkaction

#Check the rules
sudo cat /etc/polkit1/rules.d/50-default.rules #we have to be in the wheel group

#Check the groups
id

#List the bash process
echo $$

#SWITCH TO AN OTHER ALMA SESSION

#Use the agent
pkttyagent --process 5296

#BACK TO THE FIRST SESSION
sudo visudo

#Change the "bob" line and use the (Q)uit option => DO NOT DO THIS ON A PRODUCTION SYSTEM

#Sudo does not work anymore
sudo visudo

#Lets repair
pkexec visudo

#SWITCH TO THE OTHER SESSION TO AUTHENTICATE

#BACK TO THE FIRST SESSION (visudo is open - undo the break)
sudo visudo


Designed more for desktop systems we have PolKit. A separate authenticator program is
required to authenticate users. Make sure your user has a password and you belong to the
wheel group. We require the authenticator to monitor the process in another window.