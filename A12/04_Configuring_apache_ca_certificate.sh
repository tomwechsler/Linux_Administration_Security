#Working on ubuntu in a root session

sudo -i

ls /tmp

#Copy the keys (for apache to use)
cp /tmp/ubuntu.crt /tmp/myca.crt /etc/ssl/certs/

#Copy the public CA key - to update the trust-db
cp /tmp/myca.crt /usr/local/share/ca-certificates/

#Update the trust-db
update-ca-certificates

#Edit the default conf file
vim /etc/apache2/sites-available/default-ssl.conf

SSLCertificateFile      /etc/ssl/certs/ubuntu.crt
SSLCertificateKeyFile /etc/ssl/private/ubuntu.key
SSLCertificateChainFile /etc/ssl/certs/myca.crt

#Save and exit

#Restart the apache service
systemctl restart apache2

#Check the config
w3m https://ubuntu


Working on the Ubuntu web server, we copy the certificates to the correct locations. As well as
being added to /etc/ssl/certs the CA certificate is added to the correct trust directory for the
client database

Rather than using the self-signed certificate, we can use the CA signed certificate. We add in
the correct path for the SSLCertificateChainFile. We can now access the site without warnings