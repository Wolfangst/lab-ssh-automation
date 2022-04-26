# lab-ssh-automation
note: this is the initial commit and sshpass within a proxycommand script is currently not working

Insecure ssh config for pentesting course [initially PWK/OSCP] - no issues with passwords in plain. Automates logging into previously rooted servers
There is no course information, hints or other contained within this configuration. Folders have likewise been renamed to be neutral

Instead of keeping track of credentials and typing them manually, this ssh config aims to solve the issue of re-visiting a previously rooted box and pulling up files
Why no ssh keys? Because VMs are deleted and recreated, or permanent changes are not possible. 

How to use:
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
The IP address, username and password are pulled from the file. Convenient, right?

# DO NOT USE EXCEPT FOR TRAINING LAB ENVIRONMENTS WITH NO SENSITIVE DATA AS PASSWORDS ARE STORED IN PLAIN.
No responsibility is accepted for any issues arising out of use of this inherently insecure solution
