#Working on ubuntu

#Set the FQDN (OpenLDAP pics up the dns suffix)
sudo hostnamectl set-hostname ubuntu.example.com

#Check
hostnamectl

#Edit the hosts file
sudo vim /etc/hosts

192.168.56.102 ubuntu.example.com ubuntu

#Save and exit

#Test
ping -c 3 ubuntu

#Install OpenLDAP
sudo apt update 

sudo apt install -y slapd ldap-utils #<prompt to add new password for ldap admin>

#Check the open ports
ss -ntl

#Whoami (-x Use simple authentication instead of SASL)
ldapwhoami -x

ldapwhoami -Q -Y EXTERNAL -H ldapi:/// # -Q Enable SASL Quiet mode; -Y Specify the SASL mechanism to be used for authentication, -H ldapuri

#LDAP Search
ldapsearch -x -b dc=example,dc=com cn # -x Use simple authentication; -b searchbase cn= Common name






Domain based systems default to creating an LAPD domain based on your system domain
name. We use example.com and if your domain is set to the same you will not need to adjust
the exercises. Use your own IP address and the alias should be the name set to your
certificate created in the previous module.

Make sure that your domain name is configured as the LDAP domain created is based on your
system domain name.

