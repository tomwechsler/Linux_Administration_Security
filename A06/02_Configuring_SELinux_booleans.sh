#Working on alma

#Get a list
getsebool -a

getsebool zoneminder_run_sudo


semanage boolean --list
setsebool secure_mode_policyload on (-P)



An administrator may quickly change the SELinux mode to allow something to happen
that is not permitted Setting. The Boolean will require a reboot of the system to 
change the SELinux mode. Use the option -P to persist the change