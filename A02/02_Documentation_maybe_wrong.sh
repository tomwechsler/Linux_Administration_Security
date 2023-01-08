#Working on ubuntu

#Generate a hash
openssl passwd -1 Password1

#Run again, it will generate a different hash
openssl passwd -1 Password1

#And again
openssl passwd -1 Password1

#If we use the salt from the last output, it generates the same hash
openssl passwd -1 -salt mysalt Password1 

#And again and again
openssl passwd -1 -salt mysalt Password1



When setting user passwords programmatically, always use random SALT
Lets investigate passwords, salt and authentication.


https://docs.ansible.com/ansible/latest/reference_appendices/faq.html#how-do-i-generate-encrypted-passwords-for-the-user-module