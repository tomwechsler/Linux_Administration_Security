

openssl passwd -1 Password1
openssl passwd -1 -salt mysalt Password1 



When setting user passwords programmatically, always use random SALT
Lets investigate passwords, salt and authentication.

https://docs.ansible.com/ansible/latest/reference_appendices/faq.html#how-do-i-generate-encrypted-passwords-for-the-user-module