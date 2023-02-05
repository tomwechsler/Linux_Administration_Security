#Working on opensuse

#Create a python script
vim test.py

#!/usr/bin/python3
FILE = 'mytextfile'
try:
  open(FILE,'a').close()
  print(f'Created file: {FILE}')
except:
  print(f'Failed to create file {FILE}')
  exit(1)

#Save and exit
