# lab-ssh-automation
note: this is the initial commit and sshpass within a proxycommand script is currently not working

#### Description ####
Insecure ssh config for pentesting course [initially PWK/OSCP] - no issues with passwords in plain. Automates logging into previously rooted servers.

#### Use Case ####
Instead of keeping track of credentials and typing them manually, this ssh config aims to solve the issue of re-visiting a previously rooted box and pulling up files. Why no ssh keys? Because with some courses VMs are deleted and recreated, or permanent changes are not possible. 

The current state of this script (match all hosts) is not compatible with sshing to non-course hosts - if these are desired, consider using a fake domain in the ssh config for the lab environment hosts.

#### Usage ####
How to use:
- copy the .ssh folder contents from this repository to .ssh, note this will likely overwrite your config if you have any
- create a file named after the host under lab/credentials
ie lab/credentials/myhost
- inside this file follow the following format for details:
`
SSHUSER="the username goes here"
PASS="password here"
IPADDR="x.x.x.x" 
`
Where x.x.x.x is an IPv4 address

- Run with ssh <hostname in file> ; using our earlier example: ssh myhost 
The IP address, username and password are pulled from the file. There is no need to update the ssh config. Convenient, right?

Future improvements may include port numbers
  
#### Disclaimers ####
There is no course information, hints or other information contained within this configuration. Folders have likewise been renamed to be neutral
  
# DO NOT USE EXCEPT FOR TRAINING LAB ENVIRONMENTS WITH NO SENSITIVE DATA AS PASSWORDS ARE STORED IN PLAIN.
No responsibility is accepted for any issues arising out of use of this inherently insecure solution
