#Working on alma in a root session

#The info
firewall-cmd --info-TABTAB

#About http
firewall-cmd --info-service=http

#Add a service for just 15 seconds
firewall-cmd --add-port=443/tcp --timeout=15

#Check
firewall-cmd --list-all

#again
firewall-cmd --list-all

#Copy the file
cp /usr/lib/firewalld/services/http.xml /etc/firewalld/services/

#Edit the file with
vim  /etc/firewalld/services/http.xml
...
<port protocol="tcp" port="443"/>
...

#Save and exit

#Reload the firewall
firewall-cmd --reload

#Check the service
firewall-cmd --info-service=http



We can use ports in place of services. It may also be more convenient to add ports to an
existing service. Timeouts can also be used with firewall rules, the units, default to seconds.