#Working on ubunut in a root session

a2enmod ssl

openssl req -x509 -nodes -days 365 -newkey rsa:2048
-keyout /etc/ssl/private/ubuntu.key
-out /etc/ssl/certs/ubuntu.crt #Open dialogue, enter correct CN (Common Name)

vim /etc/apache/sites-available/defaults-ssl.conf
ServerName ubuntu
SSLCertificateKeyFile /etc/ssl/private/ubuntu.key
SSLCertificateFile /etc/ssl/certs/ubuntu.crt

a2ensite default-ssl

systemctl restart apache 2



Using openssl we can create a self-signed key pair. The default uses a self-signed "snakeoil" key
pair. The default configuration can be edited to use our key pair and the correct hostname.