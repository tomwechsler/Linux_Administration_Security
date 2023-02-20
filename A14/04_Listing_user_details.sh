#Working on ubuntu

#About the current user
last

#last login time for all accounts
lastlog

#Search closer
lastlog | grep -v "Never logged in"

#Search with awk
awk -F: '{ if ($3 >= 1000) print $1 }' /etc/passwd

#With a loop
for u in $(awk -F: '{ if ($3 >= 1000) print $1 }' /etc/passwd); do
echo $u
lastlog -u $u
sudo chage -l $u | grep '^Last'
done



The command last will show reboot history as well as login information. Lastlog shows last login
time for all accounts.

The command, chage, can be used to list password aging data, but for all users we can create a
lost using awk.